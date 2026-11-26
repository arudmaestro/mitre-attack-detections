# T1053.005 - Scheduled Task/Job: Scheduled Task

- **Tactic(s):** Execution, Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1053/005/
- **Platforms:** Windows

## Summary
Adversaries create scheduled tasks to execute code, persist across reboots, or run with higher privileges.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| Suspicious Scheduled Task Creation via schtasks | [sigma](sigma/proc_creation_win_schtasks_suspicious_create.yml) | [raw Sysmon](splunk/proc_creation_win_schtasks_suspicious_create.spl), [CIM](splunk/proc_creation_win_schtasks_suspicious_create_cim.spl) | [MDE](sentinel/proc_creation_win_schtasks_suspicious_create.kql), [SecurityEvent](sentinel/proc_creation_win_schtasks_suspicious_create_securityevent.kql) | experimental |

## Required data sources
Sysmon EID 1 (Splunk raw search) or CIM `Endpoint.Processes`; Sentinel `DeviceProcessEvents` (MDE) or `SecurityEvent` 4688 (and 4698) with command-line auditing.

## Known false positives & tuning
- Software installers and updaters creating scheduled tasks
- Admin automation

## Testing
See [tests/](tests/).
