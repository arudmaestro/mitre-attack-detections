# Test for T1564.002 - write a test value under HKCU\Software\T1564_002_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1564_002_test'
$k = "$root\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 't1564002' -Value "0" -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
