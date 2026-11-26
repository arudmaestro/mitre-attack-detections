# Tests - T1567.002

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1567.002 -ShowDetails
```

## Scripts
- [atomic_renamed_rclone_copy.ps1](atomic_renamed_rclone_copy.ps1)
- [atomic_rclone_renamed.sh](atomic_rclone_renamed.sh)

The script runs a copy of `true` named `rclone`, so only the process event is produced.
