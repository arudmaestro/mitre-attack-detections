# Test for T1006 - open the raw physical disk read-only. Run in a lab/test VM as Administrator only.
powershell.exe -NoProfile -Command "`$s = [IO.File]::Open('\\.\PhysicalDrive0','Open','Read','ReadWrite'); `$s.Close(); 'T1006 test'"
