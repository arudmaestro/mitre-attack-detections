# Test for T1552.006 - search a non-existent temp file for 'cpassword' (read-only). Run in a lab/test VM only.
findstr.exe /S /I cpassword "$env:TEMP\T1552006-none.xml"
