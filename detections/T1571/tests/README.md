# Tests - T1571

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1571 -ShowDetails
```

## Script
- [atomic_powershell_connect_port_4444.ps1](atomic_powershell_connect_port_4444.ps1)

Sysmon logs loopback connections unless your configuration excludes them; Defender for Endpoint may not record loopback connections. If nothing is logged, connect to a lab host on port 4444 instead.
