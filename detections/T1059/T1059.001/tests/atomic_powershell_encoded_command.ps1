# Atomic Red Team style test for T1059.001 - PowerShell encoded command
# Run in a lab/test VM only.
$cmd = 'Write-Host "T1059.001 test"'
$enc = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($cmd))
powershell.exe -NoProfile -EncodedCommand $enc
