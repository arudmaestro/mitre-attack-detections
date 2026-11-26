# Tests - T1558.003

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1558.003 -ShowDetails
```

## Scripts
- [atomic_request_service_tickets.ps1](atomic_request_service_tickets.ps1)
- [atomic_t1558_003_keyword.ps1](atomic_t1558_003_keyword.ps1)

The ticket is RC4 only when the service account allows RC4 (msDS-SupportedEncryptionTypes empty or including RC4). Atomic Red Team T1558.003 has Rubeus-based variants.

The script only simulates the command line. No ticket is requested.
