# Test for T1070.004 (Windows) - securely delete a temp file with SDelete. Run in a lab/test VM with SDelete (Sysinternals).
# cipher /w is not used here because it wipes all free space on the volume and takes a long time.
if (-not (Get-Command sdelete64.exe, sdelete.exe -ErrorAction SilentlyContinue)) { Write-Warning 'SDelete not found; download Sysinternals SDelete to run this test.'; return }
$f = Join-Path $env:TEMP 'T1070004.txt'
Set-Content -Path $f -Value 'test'
$sd = (Get-Command sdelete64.exe, sdelete.exe -ErrorAction SilentlyContinue | Select-Object -First 1).Source
& $sd -accepteula -nobanner $f
