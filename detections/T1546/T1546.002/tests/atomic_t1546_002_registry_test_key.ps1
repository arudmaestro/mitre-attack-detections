# Test for T1546.002 - write a test value under HKCU\Software\T1546_002_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1546_002_test'
$k = "$root\Control Panel\Desktop"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'SCRNSAVE.EXE' -Value "$env:TEMP\T1546002.scr" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
