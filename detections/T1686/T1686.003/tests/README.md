# Tests - T1686.003

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1686.003 -ShowDetails
```

## Scripts
- [atomic_renamed_netsh_state_off.ps1](atomic_renamed_netsh_state_off.ps1)
- [atomic_t1686_003_registry_test_key.ps1](atomic_t1686_003_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1686_003_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
