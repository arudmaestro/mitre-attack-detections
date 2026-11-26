# Test for T1485 (Windows) - securely delete a temp file with SDelete (needs SysInternals SDelete in PATH).
# Run in a lab/test VM only.
if (-not (Get-Command sdelete.exe, sdelete64.exe -ErrorAction SilentlyContinue)) { Write-Warning 'SDelete is not installed.'; return }
$f = Join-Path $env:TEMP 'T1485_test.txt'
Set-Content -Path $f -Value 'T1485 test'
$sd = (Get-Command sdelete64.exe, sdelete.exe -ErrorAction SilentlyContinue | Select-Object -First 1).Source
& $sd -accepteula -nobanner $f
