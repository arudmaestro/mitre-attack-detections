# T1070.004 - Indicator Removal: File Deletion

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/004/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may delete files left behind by the actions of their intrusion activity.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Secure File Deletion Tool Executed on Windows | [sigma](sigma/proc_creation_win_secure_file_deletion.yml) | [raw](splunk/proc_creation_win_secure_file_deletion.spl), [CIM](splunk/proc_creation_win_secure_file_deletion_cim.spl) | [MDE](sentinel/proc_creation_win_secure_file_deletion.kql), [SecurityEvent](sentinel/proc_creation_win_secure_file_deletion_securityevent.kql) | medium | experimental |
| Secure File Deletion Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_secure_file_deletion.yml) | [CIM](splunk/proc_creation_lnx_secure_file_deletion.spl) | [MDE](sentinel/proc_creation_lnx_secure_file_deletion.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- IT staff decommissioning or sanitising disks
- Administrators securely removing sensitive files

## Limitations
Ordinary deletion (del, rm, Remove-Item) is too common to alert on; file deletion telemetry (Sysmon EID 23/26, DeviceFileEvents FileDeleted) supports hunting for bulk deletion of logs or tools.

## Testing
See [tests/](tests/).
