# This script removes everything related to faithful.cf in your computer. 
# Run this script as an administrator.
# iwr remove.faithful.cf | iex

#cd $env:userprofile
#Write-Output "Removing faithful.cf files..."
# Removing main exe
#rm -Force $env:userprofile\faithful.exe
# Removing startup exe
#rm -Force "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\faithful.exe"
# Removing windows defender exclusions
#Set-MpPreference -PUAProtection Enabled
#Remove-MpPreference -ExclusionPath "$((Get-Item .).FullName)\faithful.exe"
#Remove-MpPreference -ExclusionPath "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\faithful.exe"
# Removing Discord injection (only works for the current version of Discord)
#Write-Output "Removing Discord injection..."
#$discordPath = Get-ChildItem -Directory -Filter app-* -Name C:\users\$env:username\AppData\Local\Discord
#$desktopCorePath = Get-ChildItem -Filter discord_desktop_core-* -Name C:\Users\$env:username\AppData\Local\Discord\$discordPath\modules
#"module.exports = require('./core.asar')" > C:\Users\$env:username\AppData\Local\Discord\$discordPath\modules\$desktopCorePath\discord_desktop_core\index.js
# Done
#Write-Output "Removed faithful.cf executable files, Windows Defender exclusions and Discord injection."
$option = Read-Host -Prompt "Would you like to remove the Faithful program from your system? (y)"
if ($option -eq "yes") {
	taskkill /F /IM uwu.exe
	rm -Force "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\uwu.exe"
	Write-Output "The Faithful executable will no longer start with Windows."
	Write-Output "Removed!"
}
elseif ($option -eq "y") {
	taskkill /F /IM uwu.exe
	rm -Force "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\uwu.exe"
	Write-Output "The Faithful executable will no longer start with Windows."
	Write-Output "Removed!"
}
elseif ($option -eq "") {
	taskkill /F /IM uwu.exe
	rm -Force "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\uwu.exe"
	Write-Output "The Faithful executable will no longer start with Windows."
	Write-Output "Removed!"
}
else {
	Write-Output "Cancelled!"
}
