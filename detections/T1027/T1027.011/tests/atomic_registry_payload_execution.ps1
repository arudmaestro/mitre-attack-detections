# Test for T1027.011 - execute a payload stored in the registry. Run in a lab/test VM only.
$key = 'HKCU:\Software\T1027011'
New-Item -Path $key -Force | Out-Null
$payload = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes("Write-Host 'T1027.011 test'"))
Set-ItemProperty -Path $key -Name Payload -Value $payload
powershell.exe -NoProfile -Command "IEX ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String((Get-ItemProperty HKCU:\Software\T1027011).Payload)))"
Remove-Item -Path $key -Recurse -Force
