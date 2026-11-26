# Test for T1547.001 - write a test value under HKCU\Software\T1547_001_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_001_test'
$k = "$root\Microsoft\Windows\CurrentVersion\Run"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 't1547001' -Value "powershell.exe -NoProfile -Command exit" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
