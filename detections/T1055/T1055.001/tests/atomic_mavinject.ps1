# Test for T1055.001 - call mavinject against the current PowerShell process with a DLL that does not exist.
# Run in a lab/test VM only. Nothing is injected; the process creation is still logged.
mavinject.exe $PID /INJECTRUNNING C:\Windows\Temp\T1055001_does_not_exist.dll
