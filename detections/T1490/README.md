# T1490 - Inhibit System Recovery

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1490/
- **Platforms:** Containers, ESXi, IaaS, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may delete or remove built-in data and turn off services designed to aid in the recovery of a corrupted system to prevent recovery.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Shadow Copies, Backups or Boot Recovery Deleted or Disabled | [sigma](sigma/proc_creation_win_inhibit_system_recovery.yml) | [raw](splunk/proc_creation_win_inhibit_system_recovery.spl), [CIM](splunk/proc_creation_win_inhibit_system_recovery_cim.spl) | [MDE](sentinel/proc_creation_win_inhibit_system_recovery.kql), [SecurityEvent](sentinel/proc_creation_win_inhibit_system_recovery_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Backup software rotating its own shadow copies (check the parent process)
- Administrators freeing disk space

## Limitations
Shadow copies deleted through the COM/WMI API from inside a process leave no command line; VSS event logs and EDR cover that. Cloud and ESXi recovery inhibition (snapshot and backup deletion) is not covered here.

## Testing
See [tests/](tests/).
