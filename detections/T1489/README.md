# T1489 - Service Stop

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1489/
- **Platforms:** ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may stop or disable services on a system to render those services unavailable to legitimate users.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Backup, Database or Security Service Stopped | [sigma](sigma/proc_creation_win_stop_backup_database_security_services.yml) | [raw](splunk/proc_creation_win_stop_backup_database_security_services.spl), [CIM](splunk/proc_creation_win_stop_backup_database_security_services_cim.spl) | [MDE](sentinel/proc_creation_win_stop_backup_database_security_services.kql), [SecurityEvent](sentinel/proc_creation_win_stop_backup_database_security_services_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Database and backup maintenance scripts that stop services for patching

## Limitations
Services stopped by display name (e.g. net stop "Volume Shadow Copy") or through the service control API are not covered; System log 7036 (service entered stopped state) for these services is a useful complement. Many services stopped by one account in a short time is a strong ransomware signal.

## Testing
See [tests/](tests/).
