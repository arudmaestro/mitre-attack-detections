# Test for T1218.013 - mavinject with a missing DLL into this PowerShell process (nothing is injected).
# Run in a lab/test VM only.
if (-not (Get-Command mavinject.exe -ErrorAction SilentlyContinue)) { Write-Warning 'mavinject.exe not found.'; return }
mavinject.exe $PID /INJECTRUNNING "$env:TEMP\T1218_013_missing.dll"
