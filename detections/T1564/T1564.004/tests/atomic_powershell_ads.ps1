# Test for T1564.004 - write a temp file and an alternate data stream on it with -Stream, then delete it.
# Run in a lab/test VM only.
Start-Process powershell.exe -Wait -ArgumentList '-NoProfile -Command $f=Join-Path $env:TEMP ''T1564004.txt''; Set-Content -Path $f -Value a; Set-Content -Path $f -Stream t1564004 -Value b'
Remove-Item (Join-Path $env:TEMP 'T1564004.txt') -Force -ErrorAction SilentlyContinue
