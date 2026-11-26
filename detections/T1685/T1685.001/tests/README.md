# Tests - T1685.001

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1685.001 -ShowDetails
```

## Scripts
- [atomic_renamed_wevtutil_disable.ps1](atomic_renamed_wevtutil_disable.ps1)
- [atomic_t1685_001_registry_test_key.ps1](atomic_t1685_001_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1685_001_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
