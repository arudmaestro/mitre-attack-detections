# Test for T1686.003 - a copy of cmd.exe named netsh.exe echoes 'advfirewall set allprofiles state off'
# (the firewall is not changed). Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'netsh.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo advfirewall set allprofiles state off"
Remove-Item $p -Force
