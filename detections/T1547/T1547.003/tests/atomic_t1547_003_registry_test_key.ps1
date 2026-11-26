# Test for T1547.003 - write a test value under HKCU\Software\T1547_003_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_003_test'
$k = "$root\Services\W32Time\TimeProviders\t1547003"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'DllName' -Value "$env:TEMP\T1547003.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
