# Tests - T1550.002

Emulation only. Run in a lab/test system.

## Scripts
- [atomic_t1550_002_keyword.ps1](atomic_t1550_002_keyword.ps1)
- [atomic_impacket_hashes_renamed.sh](atomic_impacket_hashes_renamed.sh)

The script only simulates the command line. No hash is used and no logon is made.

The script runs a copy of `true` named `wmiexec.py`, so only the process event is produced.
