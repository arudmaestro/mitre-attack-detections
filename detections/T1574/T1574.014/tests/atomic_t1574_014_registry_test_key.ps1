# Test for T1574.014 - write a test value under HKCU\Software\T1574_014_test (the real key is not touched).
# Run in a lab/test VM only.
$root = 'HKCU:\Software\T1574_014_test'
$k = "$root\Environment"
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name 'APPDOMAIN_MANAGER_ASM' -Value "T1574014, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" -PropertyType String -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path $root -Recurse -Force
