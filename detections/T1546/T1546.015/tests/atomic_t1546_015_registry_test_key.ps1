# Test for T1546.015 - write a test value under HKCU\Software\T1546_015_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_015_test'
$k = "$root\Software\Classes\CLSID\{00000000-1546-0015-0000-000000000000}\InprocServer32"
New-Item -Path $k -Value "$env:TEMP\T1546015.dll" -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
