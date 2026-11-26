# Test for T1546.008 - copy a text file to Temp\sethc.exe (System32 is not touched),
# and imitate winlogon.exe starting PowerShell. Run in a lab/test VM only.
Set-Content -Path "$env:TEMP\T1546008.txt" -Value 'T1546.008 test'
cmd.exe /c "copy /y $env:TEMP\T1546008.txt $env:TEMP\sethc.exe"
Remove-Item "$env:TEMP\T1546008.txt", "$env:TEMP\sethc.exe" -Force
$p = Join-Path $env:TEMP 'winlogon.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1546.008 test"
Remove-Item $p -Force
