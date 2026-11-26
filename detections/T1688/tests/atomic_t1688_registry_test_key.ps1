# Test for T1688 - write a test value under HKCU\Software\T1688_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1688_test'
$k = "$root\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\t1688test"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Test' -Value "Service" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
