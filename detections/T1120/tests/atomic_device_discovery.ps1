# Test for T1120 - list drives and disks. Run in a lab/test VM only.
fsutil.exe fsinfo drives
wmic.exe logicaldisk get caption, description
