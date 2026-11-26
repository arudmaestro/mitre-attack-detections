# Test for T1546.001 - write a test value under HKCU\Software\T1546_001_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_001_test'
$k = "$root\Software\Classes\t1546001file\shell\open\command"
New-Item -Path $k -Value "powershell.exe -NoProfile -Command exit" -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
