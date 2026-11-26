# T1037.003 - Boot or Logon Initialization Scripts: Network Logon Script

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1037/003/
- **Platforms:** Windows

## Summary
Adversaries may use network logon scripts automatically executed at logon initialization to establish persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| User Logon Script Path Set via net user or Set-ADUser | [sigma](sigma/proc_creation_win_user_logon_script_path_set.yml) | [raw](splunk/proc_creation_win_user_logon_script_path_set.spl), [CIM](splunk/proc_creation_win_user_logon_script_path_set_cim.spl) | [MDE](sentinel/proc_creation_win_user_logon_script_path_set.kql), [SecurityEvent](sentinel/proc_creation_win_user_logon_script_path_set_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators assigning logon scripts

## Limitations
Changes made in ADUC or by LDAP tools do not create these command lines; Windows Security 5136 for the scriptPath attribute (Directory Service Changes auditing) covers those. Group Policy logon scripts are a separate path (SYSVOL file changes).

## Testing
See [tests/](tests/).
