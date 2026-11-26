# T1615 - Group Policy Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1615/
- **Platforms:** Windows

## Summary
Adversaries may gather information on Group Policy settings to identify paths for privilege escalation, security measures applied within a domain, and to discover patterns in domain objects that can be manipulated or used to blend in the environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Group Policy Settings Enumerated | [sigma](sigma/proc_creation_win_group_policy_discovery.yml) | [raw](splunk/proc_creation_win_group_policy_discovery.spl), [CIM](splunk/proc_creation_win_group_policy_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_group_policy_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_group_policy_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Helpdesk and administrators troubleshooting Group Policy

## Limitations
LDAP queries for groupPolicyContainer objects and SYSVOL reads by tools such as SharpHound / BloodHound and Group3r leave no such command line; see the T1087 / T1069 discovery rules and LDAP query monitoring (Defender for Identity).

## Testing
See [tests/](tests/).
