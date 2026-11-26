# Tests - T1689

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1689 -ShowDetails
```

## Scripts
- [atomic_powershell_v2.ps1](atomic_powershell_v2.ps1)
- [atomic_t1689_registry_test_key.ps1](atomic_t1689_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1689_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
