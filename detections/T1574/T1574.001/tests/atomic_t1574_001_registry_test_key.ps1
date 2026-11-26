# Test for T1574.001 - write a test value under HKCU\Software\T1574_001_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1574_001_test'
$k = "$root\SYSTEM\CurrentControlSet\Control\Session Manager"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'SafeDllSearchMode' -Value "0" -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
