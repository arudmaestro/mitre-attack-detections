# Test for T1555.005 - list a non-existent .kdbx file through cmd.exe (read-only). Run in a lab/test VM only.
cmd.exe /c dir "$env:TEMP\T1555005.kdbx"
