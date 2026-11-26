# Tests - T1685.005

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1685.005 -ShowDetails
```

## Script
- [atomic_clear_custom_log.ps1](atomic_clear_custom_log.ps1)

The script triggers the command-line rule only. To test the 1102 rule, clear the Security log on a disposable lab VM (wevtutil cl Security).
