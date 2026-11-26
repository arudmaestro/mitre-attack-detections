# Tests - T1547.001

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1547.001 -ShowDetails
```

## Scripts
- [atomic_t1547_001_registry_test_key.ps1](atomic_t1547_001_registry_test_key.ps1)
- [atomic_startup_folder_text_file.ps1](atomic_startup_folder_text_file.ps1)
- [atomic_t1547_001_startup_redirect_test_key.ps1](atomic_t1547_001_startup_redirect_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1547_001_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The script writes under the throw-away key `HKCU\Software\T1547_001_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
