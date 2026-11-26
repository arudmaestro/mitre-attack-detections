# Tests - T1059.003

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1059.003 -ShowDetails
```

## Script
- [atomic_cmd_shell.ps1](atomic_cmd_shell.ps1)

Note: the script only generates cmd.exe telemetry. The rule needs an Office application as the parent process, so use an Office macro to trigger it fully.
