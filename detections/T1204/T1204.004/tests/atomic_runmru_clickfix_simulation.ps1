# Test for T1204.004 - write a ClickFix-style entry to the Run dialog history and remove it again.
# Run in a lab/test VM only.
$k = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU'
if (-not (Test-Path $k)) { New-Item -Path $k -Force | Out-Null }
New-ItemProperty -Path $k -Name 'T1204004' -Value 'powershell -NoProfile -Command "Write-Host T1204.004"\1' -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-ItemProperty -Path $k -Name 'T1204004'
