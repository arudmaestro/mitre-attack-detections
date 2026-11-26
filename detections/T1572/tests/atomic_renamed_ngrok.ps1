# Test for T1572 (Windows) - a copy of cmd.exe named ngrok.exe echoes 'tcp 3389' (nothing is tunnelled).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'ngrok.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo tcp 3389"
Remove-Item $p -Force
