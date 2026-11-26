# Test for T1218.014 - open a copy of the Disk Management console from Temp, then close it.
# mmc.exe may show a UAC prompt. Run in a lab/test VM only.
$msc = Join-Path $env:TEMP 'T1218_014.msc'
Copy-Item "$env:WINDIR\System32\diskmgmt.msc" $msc -Force
Start-Process mmc.exe -ArgumentList "`"$msc`""
Start-Sleep -Seconds 5
Stop-Process -Name mmc -ErrorAction SilentlyContinue
Remove-Item $msc -Force -ErrorAction SilentlyContinue
$p = Join-Path $env:TEMP 'mmc.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1218.014 test"
Remove-Item $p -Force
