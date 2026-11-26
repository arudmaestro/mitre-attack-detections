# Test for T1218.001 - open a (missing) CHM from Temp, and imitate hh.exe starting PowerShell.
# Run in a lab/test VM only.
Start-Process hh.exe -ArgumentList "$env:TEMP\T1218_001.chm"
Start-Sleep -Seconds 2
Stop-Process -Name hh -ErrorAction SilentlyContinue
$p = Join-Path $env:TEMP 'hh.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1218.001 test"
Remove-Item $p -Force
