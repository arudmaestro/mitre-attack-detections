# Test for T1213.006 (Windows) - start bcp with an export command (no server needed; the connection fails).
# Run in a lab/test VM only.
if (-not (Get-Command bcp.exe -ErrorAction SilentlyContinue)) { Write-Warning 'bcp.exe (SQL Server command-line tools) not installed.'; return }
bcp.exe "SELECT 1" queryout "$env:TEMP\T1213_006.txt" -c -T -S 127.0.0.1,1 2>$null
Remove-Item "$env:TEMP\T1213_006.txt" -Force -ErrorAction SilentlyContinue
