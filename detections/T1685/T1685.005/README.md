# T1685.005 - Disable or Modify Tools: Clear Windows Event Logs

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/005/
- **Platforms:** Windows

## Summary
Adversaries may clear Windows Event Logs to hide the activity of an intrusion.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Windows Event Log Cleared from the Command Line | [sigma](sigma/proc_creation_win_event_log_cleared.yml) | [raw](splunk/proc_creation_win_event_log_cleared.spl), [CIM](splunk/proc_creation_win_event_log_cleared_cim.spl) | [MDE](sentinel/proc_creation_win_event_log_cleared.kql), [SecurityEvent](sentinel/proc_creation_win_event_log_cleared_securityevent.kql) | high | experimental |
| Security Audit Log Cleared (1102) | [sigma](sigma/win_security_audit_log_cleared.yml) | [raw](splunk/win_security_audit_log_cleared.spl) | [SecurityEvent](sentinel/win_security_audit_log_cleared.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Administrators clearing logs on test machines
- Administrators clearing the Security log on test machines

## Limitations
Clearing other logs (System, PowerShell ...) writes System event 104, which is not a data source of this project yet. Forward logs off the host quickly so clearing does not remove the only copy.

## Testing
See [tests/](tests/).
