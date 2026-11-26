# T1087.001 - Account Discovery: Local Account

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1087/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may attempt to get a listing of local system accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Local Account Discovery on Windows | [sigma](sigma/proc_creation_win_local_account_discovery.yml) | [raw](splunk/proc_creation_win_local_account_discovery.spl), [CIM](splunk/proc_creation_win_local_account_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_local_account_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_local_account_discovery_securityevent.kql) | low | experimental |
| Local Account Discovery on Linux | [sigma](sigma/proc_creation_lnx_local_account_discovery.yml) | [CIM](splunk/proc_creation_lnx_local_account_discovery.spl) | [MDE](sentinel/proc_creation_lnx_local_account_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and inventory scripts
- Administrators and configuration management

## Limitations
Use for hunting or correlation with other discovery. Reading /etc/shadow is covered by T1003.008.

## Testing
See [tests/](tests/).
