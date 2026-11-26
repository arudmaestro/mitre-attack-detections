# Tests - T1112

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1112 -ShowDetails
```

## Script
- [atomic_security_registry_value.ps1](atomic_security_registry_value.ps1)

The script writes the value to a harmless test key. Real attacks target `HKLM\SOFTWARE\Policies\Microsoft\Windows Defender` and similar keys.
