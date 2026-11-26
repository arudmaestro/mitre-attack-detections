# Test for T1547.002 - write a test value under HKCU\Software\T1547_002_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_002_test'
$k = "$root\Control\Lsa"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Authentication Packages' -Value "msv1_0 t1547002" -PropertyType MultiString -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
