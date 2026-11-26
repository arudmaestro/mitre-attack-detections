# Test for T1518.001 (Windows) - query Defender status and list filter drivers. Run in an elevated PowerShell in a lab/test VM only.
powershell.exe -NoProfile -Command "Get-MpComputerStatus | Out-Null"
fltMC.exe
