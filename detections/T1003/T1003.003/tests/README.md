# Tests - T1003.003

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1003.003 -ShowDetails
```

## Script
- [atomic_ntds_dit_reference.ps1](atomic_ntds_dit_reference.ps1)

The script only simulates the command line. Run the `ntdsutil` command from the script comments on a lab domain controller for a full test.
