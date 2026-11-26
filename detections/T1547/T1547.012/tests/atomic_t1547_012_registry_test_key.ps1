# Test for T1547.012 - write a test value under HKCU\Software\T1547_012_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_012_test'
$k = "$root\Control\Print\Environments\Windows x64\Print Processors\t1547012"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Driver' -Value "t1547012.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
