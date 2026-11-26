# T1555.004 - Credentials from Password Stores: Windows Credential Manager

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/004/
- **Platforms:** Windows

## Summary
Adversaries may acquire credentials from the Windows Credential Manager.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Windows Credential Manager Enumerated | [sigma](sigma/proc_creation_win_credential_manager_enumeration.yml) | [raw](splunk/proc_creation_win_credential_manager_enumeration.spl), [CIM](splunk/proc_creation_win_credential_manager_enumeration_cim.spl) | [MDE](sentinel/proc_creation_win_credential_manager_enumeration.kql), [SecurityEvent](sentinel/proc_creation_win_credential_manager_enumeration_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and helpdesk listing saved credentials

## Limitations
Credential Manager secrets are usually decrypted through DPAPI by tools (Mimikatz vault::cred / dpapi::cred, SharpDPAPI) or the CredEnumerate API; the T1003 Mimikatz keyword rule and EDR detections cover those, not this rule.

## Testing
See [tests/](tests/).
