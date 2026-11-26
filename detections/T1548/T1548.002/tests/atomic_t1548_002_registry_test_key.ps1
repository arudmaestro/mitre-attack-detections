# Test for T1548.002 - write a test value under HKCU\Software\T1548_002_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1548_002_test'
$k = "$root\Software\Classes\ms-settings\shell\open\command"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'DelegateExecute' -Value "" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
