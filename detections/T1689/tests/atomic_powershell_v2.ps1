# Test for T1689 - start powershell -version 2 (exits immediately; prints an error if the 2.0 engine is not installed).
# Run in a lab/test VM only.
Start-Process powershell.exe -Wait -ArgumentList '-version 2 -NoProfile -Command exit'
