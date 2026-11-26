# Tests - T1546.011

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1546.011 -ShowDetails
```

## Scripts
- [atomic_sdbinst_missing_sdb.ps1](atomic_sdbinst_missing_sdb.ps1)
- [atomic_t1546_011_registry_test_key.ps1](atomic_t1546_011_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1546_011_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
