# T1606.002 - Forge Web Credentials: SAML Tokens

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1606/002/
- **Platforms:** SaaS, Windows, IaaS, Office Suite, Identity Provider

## Summary
An adversary may forge SAML tokens with any permissions claims and lifetimes if they possess a valid SAML token-signing certificate.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Golden SAML Tool Command Line | [sigma](sigma/proc_creation_win_golden_saml_tools.yml) | [raw](splunk/proc_creation_win_golden_saml_tools.spl), [CIM](splunk/proc_creation_win_golden_saml_tools_cim.spl) | [MDE](sentinel/proc_creation_win_golden_saml_tools.kql), [SecurityEvent](sentinel/proc_creation_win_golden_saml_tools_securityevent.kql) | high | experimental |
| AD FS DKM Key Read from Active Directory (4662) | [sigma](sigma/win_security_adfs_dkm_key_read.yml) | [raw](splunk/win_security_adfs_dkm_key_read.spl) | [SecurityEvent](sentinel/win_security_adfs_dkm_key_read.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Penetration tests and red-team exercises
- The AD FS service account reading its own key (exclude it by SubjectUserName)

## Limitations
The 4662 rule needs 'Audit Directory Service Access' on domain controllers and a SACL (Read Property for Everyone) on the DKM container under CN=ADFS,CN=Microsoft,CN=Program Data,<domain>. The AD FS service account reads the key normally, so exclude it. Token-signing keys exported on the AD FS server itself are not covered; AD FS auditing (event 1007 certificate export, 1200/1202 token issuance) and Entra ID sign-ins with tokens that have no matching AD FS issuance are the other signals (not data sources of this project yet).

## Testing
See [tests/](tests/).
