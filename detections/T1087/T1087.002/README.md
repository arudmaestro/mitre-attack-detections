# T1087.002 - Account Discovery: Domain Account

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1087/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to get a listing of domain accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Domain Account Discovery | [sigma](sigma/proc_creation_win_domain_account_discovery.yml) | [raw](splunk/proc_creation_win_domain_account_discovery.spl), [CIM](splunk/proc_creation_win_domain_account_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_domain_account_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_domain_account_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and identity management scripts

## Limitations
LDAP enumeration by tools such as SharpHound does not create these command lines; Defender for Identity or DC LDAP query logging (event 1644) covers it. PowerView names and AdFind filters are higher fidelity than net user /domain.

## Testing
See [tests/](tests/).
