# Command to execute:
# iwr faithful.cf | iex

cd $env:userprofile
Write-Output "Downloading executable file..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "XFaithful.exe"
Write-Output "Running executable..."
Start-Process ("XFaithful.exe")
Write-Output "Done!"
