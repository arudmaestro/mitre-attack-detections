# Test for T1505.001 - imitate sqlservr.exe starting PowerShell, and a command line mentioning xp_cmdshell.
# No SQL Server is needed and nothing is configured. Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'sqlservr.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1505.001 test"
Remove-Item $p -Force
cmd.exe /c echo xp_cmdshell T1505.001 test
