# Tests - T1548.002

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1548.002 -ShowDetails
```

## Scripts
- [atomic_t1548_002_registry_test_key.ps1](atomic_t1548_002_registry_test_key.ps1)
- [atomic_renamed_fodhelper_child.ps1](atomic_renamed_fodhelper_child.ps1)

The script writes under the throw-away key `HKCU\Software\T1548_002_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The second script imitates the parent process name only; no UAC bypass is performed.
