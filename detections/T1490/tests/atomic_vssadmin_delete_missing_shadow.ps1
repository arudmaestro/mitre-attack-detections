# Test for T1490 - ask vssadmin to delete a shadow copy ID that does not exist (nothing is deleted).
# Run in an elevated PowerShell in a lab/test VM only.
vssadmin.exe delete shadows /shadow={00000000-0000-0000-0000-000000000000} /quiet
