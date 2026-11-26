# Tests - T1572

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1572 -ShowDetails
```

## Scripts
- [atomic_renamed_ngrok.ps1](atomic_renamed_ngrok.ps1)
- [atomic_chisel_renamed.sh](atomic_chisel_renamed.sh)
- [atomic_ssh_renamed.sh](atomic_ssh_renamed.sh)

The script runs a copy of `true` named `chisel`, so only the process event is produced.

The script runs a copy of `true` named `ssh`, so only the process event is produced.
