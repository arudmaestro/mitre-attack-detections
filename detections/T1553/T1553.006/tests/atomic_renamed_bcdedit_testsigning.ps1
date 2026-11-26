# Test for T1553.006 (Windows) - a copy of cmd.exe named bcdedit.exe echoes '/set testsigning on'
# (boot settings are not changed). Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'bcdedit.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo /set testsigning on"
Remove-Item $p -Force
