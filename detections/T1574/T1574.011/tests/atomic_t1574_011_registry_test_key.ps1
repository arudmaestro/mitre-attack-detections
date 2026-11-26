# Test for T1574.011 - write a test value under HKCU\Software\T1574_011_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1574_011_test'
$k = "$root\SYSTEM\CurrentControlSet\Services\t1574011"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'FailureCommand' -Value "cmd.exe /c echo T1574.011" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
