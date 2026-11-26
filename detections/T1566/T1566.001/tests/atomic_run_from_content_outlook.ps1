# Test for T1566.001 - copy cmd.exe into a test folder named Content.Outlook under Temp and run 'echo' from it.
# Run in a lab/test VM only.
$d = Join-Path $env:TEMP 'T1566001\Content.Outlook\TEST1234'
New-Item -ItemType Directory -Path $d -Force | Out-Null
Copy-Item "$env:WINDIR\System32\cmd.exe" (Join-Path $d 'invoice.exe') -Force
& (Join-Path $d 'invoice.exe') /c "echo T1566.001 test"
Remove-Item (Join-Path $env:TEMP 'T1566001') -Recurse -Force
