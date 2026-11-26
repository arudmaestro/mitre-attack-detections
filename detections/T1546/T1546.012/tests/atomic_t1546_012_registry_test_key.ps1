# Test for T1546.012 - write a test value under HKCU\Software\T1546_012_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_012_test'
$k = "$root\Image File Execution Options\notepad.exe"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Debugger' -Value "C:\Windows\System32\calc.exe" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
