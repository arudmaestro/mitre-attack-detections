# Test for T1546.009 - write a test value under HKCU\Software\T1546_009_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_009_test'
$k = "$root\Session Manager\AppCertDlls"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 't1546009' -Value "$env:TEMP\T1546009.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
