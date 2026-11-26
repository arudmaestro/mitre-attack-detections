# Test for T1654 - read one Security log event with wevtutil (read-only; needs an elevated PowerShell).
# Run in a lab/test VM only.
wevtutil.exe qe Security /c:1 /f:text | Out-Null
