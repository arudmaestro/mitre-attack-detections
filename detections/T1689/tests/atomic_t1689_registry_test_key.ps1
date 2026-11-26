# Test for T1689 - write a test value under HKCU\Software\T1689_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1689_test'
$k = "$root\SYSTEM\CurrentControlSet\Control\Lsa"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'LmCompatibilityLevel' -Value "1" -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
