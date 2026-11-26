# Test for T1547.001 - write a test value under HKCU\Software\T1547_001_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_001_test'
$k = "$root\Explorer\User Shell Folders"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Startup' -Value "$env:TEMP\T1547001" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
