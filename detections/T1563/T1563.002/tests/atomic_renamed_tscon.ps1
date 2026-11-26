# Test for T1563.002 - a copy of cmd.exe named tscon.exe echoes '2 /dest:rdp-tcp#0' (no session is touched).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'tscon.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo 2 /dest:rdp-tcp#0"
Remove-Item $p -Force
