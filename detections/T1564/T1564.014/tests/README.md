# Tests - T1564.014

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1564.014 -ShowDetails
```

## Scripts
- [atomic_setfattr_renamed.sh](atomic_setfattr_renamed.sh)
- [atomic_xattr_write.sh](atomic_xattr_write.sh)

The script runs a copy of `true` named `setfattr`, so only the process event is produced.
