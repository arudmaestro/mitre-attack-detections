# Tests - T1134.003

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1134.003 -ShowDetails
```

## Script
- [atomic_runas_netonly.ps1](atomic_runas_netonly.ps1)

The test is interactive: runas asks for a password. Any value works for `/netonly`.
