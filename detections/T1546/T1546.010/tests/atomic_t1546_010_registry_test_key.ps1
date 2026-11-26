# Test for T1546.010 - write a test value under HKCU\Software\T1546_010_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_010_test'
$k = "$root\Windows NT\CurrentVersion\Windows"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'AppInit_DLLs' -Value "$env:TEMP\T1546010.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
