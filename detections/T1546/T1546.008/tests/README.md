# Tests - T1546.008

Emulation only. Run in a lab/test system.

## Scripts
- [atomic_t1546_008_registry_test_key.ps1](atomic_t1546_008_registry_test_key.ps1)
- [atomic_accessibility_copy_simulation.ps1](atomic_accessibility_copy_simulation.ps1)

The script writes under the throw-away key `HKCU\Software\T1546_008_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The winlogon part uses a renamed copy of cmd.exe; no system file is replaced.
