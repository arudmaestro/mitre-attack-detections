# Test for T1686.003 - write a test value under HKCU\Software\T1686_003_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1686_003_test'
$k = "$root\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'EnableFirewall' -Value "0" -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
