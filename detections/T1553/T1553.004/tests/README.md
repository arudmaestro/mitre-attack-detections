# Tests - T1553.004

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1553.004 -ShowDetails
```

## Scripts
- [atomic_certutil_addstore_missing_file.ps1](atomic_certutil_addstore_missing_file.ps1)
- [atomic_t1553_004_registry_test_key.ps1](atomic_t1553_004_registry_test_key.ps1)
- [atomic_cp_renamed.sh](atomic_cp_renamed.sh)
- [atomic_security_renamed.sh](atomic_security_renamed.sh)

The script writes under the throw-away key `HKCU\Software\T1553_004_test` whose path ends like the real key, so the rule fires without changing the system. Your Sysmon configuration must log registry changes for that path (configs that filter on the key name with 'contains' or 'end with' usually do).

The script runs a copy of `true` named `cp`, so only the process event is produced.

The script runs a copy of `true` named `security`, so only the process event is produced.
