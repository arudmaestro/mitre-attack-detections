# Test for T1556.008 - write a test value under HKCU\Software\T1556_008_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1556_008_test'
$k = "$root\SYSTEM\CurrentControlSet\Services\t1556008\NetworkProvider"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'ProviderPath' -Value "$env:TEMP\T1556008.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
