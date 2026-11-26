# T1069.001 - Permission Groups Discovery: Local Groups

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1069/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to find local system groups and permission settings.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Local Group Membership Discovery on Windows | [sigma](sigma/proc_creation_win_local_group_discovery.yml) | [raw](splunk/proc_creation_win_local_group_discovery.spl), [CIM](splunk/proc_creation_win_local_group_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_local_group_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_local_group_discovery_securityevent.kql) | low | experimental |
| Local Group Discovery on Linux | [sigma](sigma/proc_creation_lnx_local_group_discovery.yml) | [CIM](splunk/proc_creation_lnx_local_group_discovery.spl) | [MDE](sentinel/proc_creation_lnx_local_group_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and inventory scripts
- Administrators and configuration management

## Limitations
Common in normal administration; use for hunting or correlate with other discovery from the same host and user.

## Testing
See [tests/](tests/).
