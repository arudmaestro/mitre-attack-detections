# Test for T1027.010 - Base64-decoded command run with IEX. Run in a lab/test VM only.
$b64 = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes("Write-Host 'T1027.010 test'"))
powershell.exe -NoProfile -Command "IEX ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('$b64')))"
