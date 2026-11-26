# T1552.002 - Unsecured Credentials: Credentials in Registry

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/002/
- **Platforms:** Windows

## Summary
Adversaries may search the Registry on compromised systems for insecurely stored credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Registry Searched for Passwords with reg query | [sigma](sigma/proc_creation_win_reg_query_password_search.yml) | [raw](splunk/proc_creation_win_reg_query_password_search.spl), [CIM](splunk/proc_creation_win_reg_query_password_search_cim.spl) | [MDE](sentinel/proc_creation_win_reg_query_password_search.kql), [SecurityEvent](sentinel/proc_creation_win_reg_query_password_search_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators auditing the registry for stored passwords

## Limitations
Direct reads of known keys (e.g. reg query of Winlogon DefaultPassword, PowerShell Get-ItemProperty) and tools that read the registry through the API are not covered.

## Testing
See [tests/](tests/).
