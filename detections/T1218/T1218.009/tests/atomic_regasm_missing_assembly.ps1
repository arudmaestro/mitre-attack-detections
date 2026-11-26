# Test for T1218.009 - RegAsm /U with a missing assembly in Temp (nothing runs). Run in a lab/test VM only.
$ra = "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe"
if (-not (Test-Path $ra)) { Write-Warning 'RegAsm.exe not found.'; return }
& $ra /U "$env:TEMP\T1218_009_missing.dll" 2>$null
