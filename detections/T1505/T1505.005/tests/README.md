# Tests - T1505.005

Emulation only. Run in a lab/test system.

## Script
- [atomic_termservice_servicedll_test_key.ps1](atomic_termservice_servicedll_test_key.ps1)

The rule matches on the end of the key path, so this test key triggers it without changing the RDP service. Your Sysmon configuration must log registry changes under HKCU\Software for this test.
