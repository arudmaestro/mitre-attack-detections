# Test for T1685 - write a test value under HKCU\Software\T1685_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1685_test'
$k = "$root\SOFTWARE\Microsoft\Windows Defender\Exclusions\Paths"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'C:\T1685test' -Value "0" -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
