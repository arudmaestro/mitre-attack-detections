# Tests - T1505.001

Emulation only. Run in a lab/test system.

## Script
- [atomic_sqlserver_child_simulation.ps1](atomic_sqlserver_child_simulation.ps1)

The script uses a renamed copy of cmd.exe as sqlservr.exe. On a lab SQL Server, `EXEC xp_cmdshell 'whoami'` (after enabling it) is the full test.
