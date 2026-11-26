# Test for T1547.004 - write a test value under HKCU\Software\T1547_004_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_004_test'
$k = "$root\Winlogon"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Shell' -Value "explorer.exe, $env:TEMP\T1547004.exe" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
