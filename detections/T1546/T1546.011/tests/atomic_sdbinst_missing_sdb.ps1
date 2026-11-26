# Test for T1546.011 - sdbinst with a missing .sdb (nothing is installed). Run in a lab/test VM only.
sdbinst.exe -q "$env:TEMP\T1546011_missing.sdb"
