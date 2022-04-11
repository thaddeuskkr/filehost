cd $env:userprofile
Write-Output "Starting script..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"
Start-Process ("faithful.exe")
Write-Output "Done!"
