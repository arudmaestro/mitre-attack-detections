# Test for T1197 - create and cancel an empty BITS job. Run in a lab/test VM only.
bitsadmin.exe /create T1197test
bitsadmin.exe /cancel T1197test
