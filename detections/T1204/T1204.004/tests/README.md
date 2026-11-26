# Tests - T1204.004

Emulation only. Run in a lab/test system.

## Script
- [atomic_runmru_clickfix_simulation.ps1](atomic_runmru_clickfix_simulation.ps1)

For the process rule, press Win+R in the lab VM and run: `powershell -NoProfile -Command "iwr http://127.0.0.1 -UseBasicParsing"` (the request fails harmlessly).
