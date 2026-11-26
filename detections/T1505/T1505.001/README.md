# T1505.001 - Server Software Component: SQL Stored Procedures

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1505/001/
- **Platforms:** Windows, Linux

## Summary
Adversaries may abuse SQL stored procedures to establish persistent access to systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SQL Server Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_sqlserver_spawns_shell.yml) | [raw](splunk/proc_creation_win_sqlserver_spawns_shell.spl), [CIM](splunk/proc_creation_win_sqlserver_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_sqlserver_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_sqlserver_spawns_shell_securityevent.kql) | high | experimental |
| SQL Command-Execution Procedure Used from the Command Line | [sigma](sigma/proc_creation_win_sql_command_execution_procedures.yml) | [raw](splunk/proc_creation_win_sql_command_execution_procedures.spl), [CIM](splunk/proc_creation_win_sql_command_execution_procedures_cim.spl) | [MDE](sentinel/proc_creation_win_sql_command_execution_procedures.kql), [SecurityEvent](sentinel/proc_creation_win_sql_command_execution_procedures_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Database jobs that use xp_cmdshell by design (allowlist by command line)
- DBAs and deployment scripts that configure these procedures

## Limitations
Procedures created or changed from a SQL client on another machine appear only in SQL Server Audit / the SQL error log (sp_configure changes, CREATE PROCEDURE with startup option). Linux SQL Server is not covered.

## Testing
See [tests/](tests/).
