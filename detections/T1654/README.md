# T1654 - Log Enumeration

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1654/
- **Platforms:** ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may enumerate system and service logs to find useful data.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Security Event Log Queried from the Command Line | [sigma](sigma/proc_creation_win_security_log_queried.yml) | [raw](splunk/proc_creation_win_security_log_queried.spl), [CIM](splunk/proc_creation_win_security_log_queried_cim.spl) | [MDE](sentinel/proc_creation_win_security_log_queried.kql), [SecurityEvent](sentinel/proc_creation_win_security_log_queried_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and monitoring scripts reading the Security log

## Limitations
Logs read through the API (EvtQuery, .NET EventLogReader) by tools and logs copied as files (Security.evtx) are not covered. On Linux, reads of /var/log/auth.log or secure are too common to alert on.

## Testing
See [tests/](tests/).
