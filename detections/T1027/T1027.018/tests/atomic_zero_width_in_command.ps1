# Test for T1027.018 - zero-width space in a PowerShell command line. Run in a lab/test VM only.
$cmd = "Write-Host 'T1027.018" + [char]0x200B + "test'"
powershell.exe -NoProfile -Command $cmd
