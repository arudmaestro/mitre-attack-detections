# Test for T1048.003 - run ftp.exe with a script file (no connection is made). Run in a lab/test VM only.
$script = Join-Path $env:TEMP 'T1048003_ftp.txt'
Set-Content -Path $script -Value 'quit'
ftp.exe -s:$script
Remove-Item $script -Force
