# Test for T1556.002 - write a test value under HKCU\Software\T1556_002_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1556_002_test'
$k = "$root\Control\Lsa"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Notification Packages' -Value "scecli t1556002" -PropertyType MultiString -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
