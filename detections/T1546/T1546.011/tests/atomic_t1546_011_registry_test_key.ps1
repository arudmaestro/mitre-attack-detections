# Test for T1546.011 - write a test value under HKCU\Software\T1546_011_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_011_test'
$k = "$root\AppCompatFlags\Custom\t1546011.exe"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 't1546011.sdb' -Value "1" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
