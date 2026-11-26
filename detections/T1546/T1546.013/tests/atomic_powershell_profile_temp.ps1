# Test for T1546.013 - write a file named like a PowerShell profile to Temp (your real profile is not touched).
# Run in a lab/test VM only.
Start-Process powershell.exe -Wait -ArgumentList '-NoProfile -Command Out-File -InputObject T1546.013 -FilePath $env:TEMP\Microsoft.PowerShell_profile.ps1'
Remove-Item "$env:TEMP\Microsoft.PowerShell_profile.ps1" -Force -ErrorAction SilentlyContinue
