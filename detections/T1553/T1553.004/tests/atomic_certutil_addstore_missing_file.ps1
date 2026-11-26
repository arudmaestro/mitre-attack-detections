# Test for T1553.004 (Windows) - certutil -addstore to the user Root store with a file that does not exist
# (the command fails, nothing is installed). Run in a lab/test VM only.
certutil.exe -user -addstore root "$env:TEMP\T1553004-none.cer"
