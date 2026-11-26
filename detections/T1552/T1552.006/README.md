# T1552.006 - Unsecured Credentials: Group Policy Preferences

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/006/
- **Platforms:** Windows

## Summary
Adversaries may attempt to find unsecured credentials in Group Policy Preferences (GPP).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Group Policy Preferences Password Search | [sigma](sigma/proc_creation_win_gpp_password_search.yml) | [raw](splunk/proc_creation_win_gpp_password_search.spl), [CIM](splunk/proc_creation_win_gpp_password_search_cim.spl) | [MDE](sentinel/proc_creation_win_gpp_password_search.kql), [SecurityEvent](sentinel/proc_creation_win_gpp_password_search_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Security audits looking for leftover GPP passwords

## Limitations
Tools that read SYSVOL directly (e.g. NetExec gpp_password module, run from an attacker machine) leave no command line on your hosts; on domain controllers, file share auditing (5145) for Groups.xml, Services.xml, ScheduledTasks.xml and DataSources.xml shows the reads. Removing old GPP passwords from SYSVOL removes the risk.

## Testing
See [tests/](tests/).
