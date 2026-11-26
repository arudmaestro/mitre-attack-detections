# Test for T1552.001 (Windows) - search an empty temp folder for 'password' with findstr /s. Read-only.
# Run in a lab/test VM only.
$d = Join-Path $env:TEMP 'T1552001'
New-Item -ItemType Directory -Path $d -Force | Out-Null
findstr.exe /s /i password "$d\*.xml"
Remove-Item $d -Recurse -Force
