# T1556.005 - Modify Authentication Process: Reversible Encryption

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/005/
- **Platforms:** Windows

## Summary
An adversary may abuse Active Directory authentication encryption properties to gain access to credentials on Windows systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Reversible Password Encryption Enabled with PowerShell | [sigma](sigma/proc_creation_win_reversible_password_encryption_enabled.yml) | [raw](splunk/proc_creation_win_reversible_password_encryption_enabled.spl), [CIM](splunk/proc_creation_win_reversible_password_encryption_enabled_cim.spl) | [MDE](sentinel/proc_creation_win_reversible_password_encryption_enabled.kql), [SecurityEvent](sentinel/proc_creation_win_reversible_password_encryption_enabled_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legacy applications that need reversible encryption (CHAP, Digest authentication); usually setting it to $false

## Limitations
Changes made in Active Directory Users and Computers or by LDAP writes leave no command line; on domain controllers, 4738 (user changed, 'Store password using reversible encryption' in UserAccountControl) and 4739 (domain policy changed) show them, but these events are not data sources of this project yet.

## Testing
See [tests/](tests/).
