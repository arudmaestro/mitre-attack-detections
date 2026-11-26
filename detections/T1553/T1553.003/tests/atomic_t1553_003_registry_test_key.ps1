# Test for T1553.003 - write a test value under HKCU\Software\T1553_003_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1553_003_test'
$k = "$root\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllGetSignedDataMsg\{C689AAB8-8E78-11D0-8C47-00C04FC295EE}"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'Dll' -Value "$env:TEMP\T1553003.dll" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
