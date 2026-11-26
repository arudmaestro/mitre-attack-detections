# Test for T1218.003 - start cmstp silently with a missing INF (nothing is installed), and imitate cmstp starting PowerShell.
# Run in a lab/test VM only.
cmstp.exe /s /ns "$env:TEMP\T1218_003_missing.inf"
$p = Join-Path $env:TEMP 'cmstp.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1218.003 test"
Remove-Item $p -Force
