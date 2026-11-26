# Test for T1564.003 - start a hidden PowerShell that exits immediately. Run in a lab/test VM only.
Start-Process powershell.exe -Wait -ArgumentList '-NoProfile -WindowStyle Hidden -Command exit'
