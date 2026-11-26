# Test for T1547.010 - write a test value under HKCU\Software\T1547_010_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_010_test'
$k = "$root\Control\Print\Monitors\t1547010"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Driver' -Value "$env:TEMP\T1547010.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
