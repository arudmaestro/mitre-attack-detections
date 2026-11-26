# Tests - T1685

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1685 -ShowDetails
```

## Scripts
- [atomic_renamed_sc_stop_windefend.ps1](atomic_renamed_sc_stop_windefend.ps1)
- [atomic_t1685_keyword.ps1](atomic_t1685_keyword.ps1)
- [atomic_t1685_registry_test_key.ps1](atomic_t1685_registry_test_key.ps1)
- [atomic_systemctl_renamed.sh](atomic_systemctl_renamed.sh)

The script only simulates the command line. No exclusion is added.

The script writes under the throw-away key `HKCU\Software\T1685_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The script runs a copy of `true` named `systemctl`, so only the process event is produced.
