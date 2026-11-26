# Tests - T1557.001

Emulation only. Run in a lab/test system.

## Scripts
- [atomic_t1557_001_keyword.ps1](atomic_t1557_001_keyword.ps1)
- [atomic_responder_renamed.sh](atomic_responder_renamed.sh)

The script only simulates the command line. No network traffic is poisoned.

The script runs a copy of `true` named `responder`, so only the process event is produced.
