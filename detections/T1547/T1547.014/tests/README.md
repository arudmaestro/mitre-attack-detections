# Tests - T1547.014

Emulation only. Run in a lab/test system.

## Script
- [atomic_t1547_014_registry_test_key.ps1](atomic_t1547_014_registry_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1547_014_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
