# T1222.001 - File and Directory Permissions Modification: Windows Permissions

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1222/001/
- **Platforms:** Windows

## Summary
Adversaries may modify file or directory permissions/attributes to evade access control lists (ACLs) and access protected files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Permissions Granted to Everyone with icacls or cacls | [sigma](sigma/proc_creation_win_icacls_grant_everyone.yml) | [raw](splunk/proc_creation_win_icacls_grant_everyone.spl), [CIM](splunk/proc_creation_win_icacls_grant_everyone_cim.spl) | [MDE](sentinel/proc_creation_win_icacls_grant_everyone.kql), [SecurityEvent](sentinel/proc_creation_win_icacls_grant_everyone_securityevent.kql) | medium | experimental |
| Ownership of System Files Taken with takeown | [sigma](sigma/proc_creation_win_takeown_system_files.yml) | [raw](splunk/proc_creation_win_takeown_system_files.spl), [CIM](splunk/proc_creation_win_takeown_system_files_cim.spl) | [MDE](sentinel/proc_creation_win_takeown_system_files.kql), [SecurityEvent](sentinel/proc_creation_win_takeown_system_files_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Software installers and admins opening shared folders
- Administrators repairing or customising system files

## Testing
See [tests/](tests/).
