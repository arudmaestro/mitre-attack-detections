# Tests - T1546.012

Emulation only. Run in a lab/test system.

## Scripts
- [atomic_t1546_012_registry_test_key.ps1](atomic_t1546_012_registry_test_key.ps1)
- [atomic_t1546_012_silent_process_exit_test_key.ps1](atomic_t1546_012_silent_process_exit_test_key.ps1)

The script writes under the throw-away key `HKCU\Software\T1546_012_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The script writes under the throw-away key `HKCU\Software\T1546_012_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).
