# Test for T1546.007 - write a test value under HKCU\Software\T1546_007_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_007_test'
$k = "$root\Microsoft\NetSh"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 't1546007' -Value "$env:TEMP\T1546007.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
