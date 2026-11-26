# Test for T1218.007 - msiexec tries to install from a closed local port (nothing is downloaded). Run in a lab/test VM only.
Start-Process msiexec.exe -ArgumentList '/q /i http://127.0.0.1:1/T1218_007.msi' -Wait
