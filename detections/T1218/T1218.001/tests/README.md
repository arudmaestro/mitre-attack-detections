# Tests - T1218.001

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1218.001 -ShowDetails
```

## Script
- [atomic_chm_simulation.ps1](atomic_chm_simulation.ps1)

The child-process part uses a renamed copy of cmd.exe as hh.exe. For a full test use the Atomic Red Team CHM tests.
