# Test for T1547.014 - write a test value under HKCU\Software\T1547_014_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1547_014_test'
$k = "$root\Active Setup\Installed Components\{00000000-1547-0014-0000-000000000000}"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'StubPath' -Value "powershell.exe -NoProfile -Command exit" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
