# Tests - T1546.007

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1546.007 -ShowDetails
```

## Scripts
- [atomic_netsh_add_helper_usage.ps1](atomic_netsh_add_helper_usage.ps1)
- [atomic_t1546_007_registry_test_key.ps1](atomic_t1546_007_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1546_007_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
