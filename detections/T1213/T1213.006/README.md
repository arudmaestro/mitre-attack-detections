# T1213.006 - Data from Information Repositories: Databases

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1213/006/
- **Platforms:** IaaS, Linux, macOS, SaaS, Windows

## Summary
Adversaries may leverage databases to mine valuable information.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Database Export Tool Executed on Windows | [sigma](sigma/proc_creation_win_database_export_tools.yml) | [raw](splunk/proc_creation_win_database_export_tools.spl), [CIM](splunk/proc_creation_win_database_export_tools_cim.spl) | [MDE](sentinel/proc_creation_win_database_export_tools.kql), [SecurityEvent](sentinel/proc_creation_win_database_export_tools_securityevent.kql) | low | experimental |
| Database Dump Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_database_dump_tools.yml) | [CIM](splunk/proc_creation_lnx_database_dump_tools.spl) | [MDE](sentinel/proc_creation_lnx_database_dump_tools.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Scheduled database backups and ETL jobs (allowlist by host and account)

## Limitations
Bulk reads through a database client or application account are only visible in database audit logs (SQL Server Audit, pgaudit, MySQL audit plugin) and cloud database logs. Alert on these rules when the host or account is not a known backup system.

## Testing
See [tests/](tests/).
