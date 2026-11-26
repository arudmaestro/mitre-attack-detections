# Test for T1134.005 - SID History injection with Atomic Red Team (Mimikatz sid::add).
# Run only in a lab domain on a domain controller, as a domain admin.
Invoke-AtomicTest T1134.005 -GetPrereqs
Invoke-AtomicTest T1134.005
