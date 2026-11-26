# Test for T1003.006 - DCSync. Run only in a lab domain, as a user with replication rights.
# Uses Atomic Red Team (https://github.com/redcanaryco/invoke-atomicredteam) with Mimikatz prerequisites.
Invoke-AtomicTest T1003.006 -GetPrereqs
Invoke-AtomicTest T1003.006
