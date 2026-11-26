# Test for T1003.003 - NTDS.dit reference on the command line. Run in a lab/test VM only.
# Harmless simulation: only echoes a copy command. For a real test on a lab domain controller use:
#   ntdsutil "ac i ntds" "ifm" "create full C:\Temp\ifm" q q
cmd.exe /c "echo copy C:\Windows\NTDS\ntds.dit %TEMP%\ntds.dit"
