# Tests - T1021.001

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1021.001 -ShowDetails
```

## Script
- [atomic_rdp_registry_value.ps1](atomic_rdp_registry_value.ps1)

The script writes the value to a harmless test key. The real attack changes `HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server`.
