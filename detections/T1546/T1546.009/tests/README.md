# Tests - T1546.009

Emulation only. Run in a lab/test system.

## Script
- [atomic_t1546_009_registry_test_key.ps1](atomic_t1546_009_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1546_009_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
