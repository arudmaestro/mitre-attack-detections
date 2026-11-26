# Test for T1218.004 - start InstallUtil with the bypass switches and a missing assembly (nothing runs).
# Run in a lab/test VM only.
$iu = "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\InstallUtil.exe"
if (-not (Test-Path $iu)) { Write-Warning 'InstallUtil.exe not found.'; return }
& $iu /logfile= /LogToConsole=false /U "$env:TEMP\T1218_004_missing.dll" 2>$null
