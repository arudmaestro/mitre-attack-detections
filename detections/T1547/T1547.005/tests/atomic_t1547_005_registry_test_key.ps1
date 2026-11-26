# Test for T1547.005 - write a test value under HKCU\Software\T1547_005_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_005_test'
$k = "$root\Control\Lsa"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Security Packages' -Value "kerberos msv1_0 t1547005" -PropertyType MultiString -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
