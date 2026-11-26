# Tests - T1561.001

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1561.001 -ShowDetails
```

## Scripts
- [atomic_dd_renamed.sh](atomic_dd_renamed.sh)
- [atomic_renamed_cipher_wipe.ps1](atomic_renamed_cipher_wipe.ps1)

The script runs a copy of `true` named `dd`, so only the process event is produced.
