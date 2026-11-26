# Test for T1553.004 - write a test value under HKCU\Software\T1553_004_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1553_004_test'
$k = "$root\SOFTWARE\Microsoft\SystemCertificates\Root\Certificates\0000000000000000000000000000000000001553"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Blob' -Value "test" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
