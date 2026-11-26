# Tests - T1553.006

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1553.006 -ShowDetails
```

## Scripts
- [atomic_renamed_bcdedit_testsigning.ps1](atomic_renamed_bcdedit_testsigning.ps1)
- [atomic_csrutil_renamed.sh](atomic_csrutil_renamed.sh)

The script runs a copy of `true` named `csrutil`, so only the process event is produced.
