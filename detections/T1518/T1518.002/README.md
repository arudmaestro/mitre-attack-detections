# T1518.002 - Software Discovery: Backup Software Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1518/002/
- **Platforms:** Windows, macOS, Linux

## Summary
Adversaries may attempt to get a listing of backup software or configurations that are installed on a system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Backup Software Discovery on Windows | [sigma](sigma/proc_creation_win_backup_software_discovery.yml) | [raw](splunk/proc_creation_win_backup_software_discovery.spl), [CIM](splunk/proc_creation_win_backup_software_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_backup_software_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_backup_software_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Backup product installers and health checks
- Administrators troubleshooting backup services

## Limitations
PowerShell (Get-Service / Get-Process) is not included because backup products ship PowerShell modules that would match constantly.

## Testing
See [tests/](tests/).
