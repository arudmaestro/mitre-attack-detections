# T1069.002 - Permission Groups Discovery: Domain Groups

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1069/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to find domain-level groups and permission settings.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Domain Group Membership Discovery | [sigma](sigma/proc_creation_win_domain_group_discovery.yml) | [raw](splunk/proc_creation_win_domain_group_discovery.spl), [CIM](splunk/proc_creation_win_domain_group_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_domain_group_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_domain_group_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and identity management scripts

## Limitations
LDAP queries made by tools such as BloodHound/SharpHound do not create these command lines; LDAP query telemetry (Defender for Identity, DC event 1644) covers those. PowerView function names are higher fidelity than net group.

## Testing
See [tests/](tests/).
