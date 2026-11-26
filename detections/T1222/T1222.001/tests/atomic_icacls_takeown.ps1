# Test for T1222.001 - grant Everyone full control on a test folder, and run takeown against a missing System32 file.
# Run in a lab/test VM only.
$d = Join-Path $env:TEMP 'T1222_001'
New-Item -Path $d -ItemType Directory -Force | Out-Null
icacls.exe $d /grant Everyone:F
Remove-Item $d -Recurse -Force
takeown.exe /f "$env:WINDIR\System32\T1222_001_missing.txt" 2>$null
