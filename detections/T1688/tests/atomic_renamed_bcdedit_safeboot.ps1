# Test for T1688 - a copy of cmd.exe named bcdedit.exe echoes '/set {default} safeboot minimal' (boot settings unchanged).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'bcdedit.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo /set {default} safeboot minimal"
Remove-Item $p -Force
