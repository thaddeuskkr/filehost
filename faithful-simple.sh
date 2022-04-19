# Command to execute:
# iwr faithful.cf | iex

cd $env:userprofile
Write-Output "Downloading executable file..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/Faithful.exe -OutFile "xoxo.exe"
Write-Output "Running executable..."
Start-Process ("xoxo.exe")
Write-Output "Done!"
