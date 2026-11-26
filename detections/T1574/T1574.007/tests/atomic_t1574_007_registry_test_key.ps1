# Test for T1574.007 - write a test value under HKCU\Software\T1574_007_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1574_007_test'
$k = "$root\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Path' -Value "C:\Windows\system32;$env:TEMP\T1574007" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
