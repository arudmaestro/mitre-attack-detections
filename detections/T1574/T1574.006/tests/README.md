# Tests - T1574.006

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1574.006 -ShowDetails
```

## Scripts
- [atomic_tee_renamed.sh](atomic_tee_renamed.sh)
- [atomic_env_preload.sh](atomic_env_preload.sh)

The script runs a copy of `true` named `tee`, so only the process event is produced.
