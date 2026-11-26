# Test for T1505.003 (Windows) - imitate w3wp.exe starting ipconfig (no web server needed). Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'w3wp.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "ipconfig.exe"
Remove-Item $p -Force
