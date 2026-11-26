# Tests - T1204.002

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1204.002 -ShowDetails
```

## Script
- [atomic_malicious_file_simulation.ps1](atomic_malicious_file_simulation.ps1)

The Word part uses a renamed copy of cmd.exe as the parent; no macro is run.
