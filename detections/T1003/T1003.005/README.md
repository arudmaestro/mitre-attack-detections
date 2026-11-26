# T1003.005 - OS Credential Dumping: Cached Domain Credentials

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/005/
- **Platforms:** Windows, Linux

## Summary
Adversaries may attempt to access cached domain credentials used to allow authentication to occur in the event a domain controller is unavailable.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Cached Domain Credentials Access | [sigma](sigma/proc_creation_win_cached_domain_credentials_access.yml) | [raw](splunk/proc_creation_win_cached_domain_credentials_access.spl), [CIM](splunk/proc_creation_win_cached_domain_credentials_access_cim.spl) | [MDE](sentinel/proc_creation_win_cached_domain_credentials_access.kql), [SecurityEvent](sentinel/proc_creation_win_cached_domain_credentials_access_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Authorised security testing

## Limitations
Saving the whole SECURITY hive also exposes cached credentials; that is covered by the T1003.004 rule.

## Testing
See [tests/](tests/).
