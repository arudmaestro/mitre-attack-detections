# Tests - T1560.001

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1560.001 -ShowDetails
```

## Scripts
- [atomic_renamed_7z_password.ps1](atomic_renamed_7z_password.ps1)
- [atomic_zip_renamed.sh](atomic_zip_renamed.sh)

The script runs a copy of `true` named `zip`, so only the process event is produced.
