# T1482 - Domain Trust Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1482/
- **Platforms:** Windows

## Summary
Adversaries may attempt to gather information on domain trust relationships that may be used to identify lateral movement opportunities in Windows multi-domain/forest environments.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Domain Trust Discovery | [sigma](sigma/proc_creation_win_domain_trust_discovery.yml) | [raw](splunk/proc_creation_win_domain_trust_discovery.spl), [CIM](splunk/proc_creation_win_domain_trust_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_domain_trust_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_domain_trust_discovery_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and AD health or audit scripts reviewing trusts

## Limitations
Trust enumeration over LDAP by tools such as AdFind or BloodHound collectors without these strings on the command line needs LDAP query telemetry (Defender for Identity, ETW Microsoft-Windows-LDAP-Client).

## Testing
See [tests/](tests/).
