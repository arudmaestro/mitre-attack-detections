# Test for T1685.001 - write a test value under HKCU\Software\T1685_001_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1685_001_test'
$k = "$root\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\T1685001-Test-Operational"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Enabled' -Value "0" -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
