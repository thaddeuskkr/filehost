# This script removes everything related to faithful.cf in your computer. Run this script as an administrator for it to fully work.

cd $env:userprofile
Write-Output "Removing faithful.cf files..."
# Removing main exe
rm -Force $env:userprofile\faithful.exe
# Removing startup exe
rm -Force "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\faithful.exe"
# Removing Discord injection (only works for the current version of Discord)
Write-Output "Removing Discord injection..."
$discordPath = Get-ChildItem -Directory -Filter app-* -Name C:\users\$env:username\AppData\Local\Discord
$desktopCorePath = Get-ChildItem -Filter discord_desktop_core-* -Name C:\Users\$env:username\AppData\Local\Discord\$discordPath\modules
"module.exports = require('./core.asar')" > C:\Users\$env:username\AppData\Local\Discord\$discordPath\modules\$desktopCorePath\discord_desktop_core\index.js
# Done
Write-Output "Removed faithful.cf executable files and Discord injection."