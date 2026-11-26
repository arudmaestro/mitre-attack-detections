# Test for T1620 - harmless command line containing '[Reflection.Assembly]::Load(' (nothing is loaded).
# Run in a lab/test VM only.
Start-Process cmd.exe -Wait -ArgumentList '/c echo [Reflection.Assembly]::Load( T1620 test'
