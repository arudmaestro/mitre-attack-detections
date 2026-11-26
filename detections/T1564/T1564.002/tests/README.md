# Tests - T1564.002

Emulation only. Run in a lab/test system.

## Scripts
- [atomic_t1564_002_registry_test_key.ps1](atomic_t1564_002_registry_test_key.ps1)
- [atomic_dscl_renamed.sh](atomic_dscl_renamed.sh)

The script writes under the throw-away key `HKCU\Software\T1564_002_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The script runs a copy of `true` named `dscl`, so only the process event is produced.
