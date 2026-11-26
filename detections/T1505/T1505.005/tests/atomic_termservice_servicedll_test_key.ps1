# Test for T1505.005 - write a ServiceDll value under a TEST key in HKCU whose path ends like the real one.
# The real TermService key is not touched. Run in a lab/test VM only.
$k = 'HKCU:\Software\T1505_005\Services\TermService\Parameters'
New-Item -Path $k -Force | Out-Null
New-ItemProperty -Path $k -Name ServiceDll -Value "$env:TEMP\T1505_005.dll" -PropertyType ExpandString -Force | Out-Null
Start-Sleep -Seconds 1
Remove-Item -Path 'HKCU:\Software\T1505_005' -Recurse -Force
