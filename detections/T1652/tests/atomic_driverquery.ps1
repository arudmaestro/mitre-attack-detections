# Test for T1652 - list drivers with driverquery (read-only). Run in a lab/test VM only.
driverquery.exe /fo csv | Out-Null
