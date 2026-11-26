# Test for T1574.012 - write a test value under HKCU\Software\T1574_012_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1574_012_test'
$k = "$root\Environment"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'COR_PROFILER_PATH' -Value "$env:TEMP\T1574012.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
