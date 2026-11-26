# T1484.002 - Domain or Tenant Policy Modification: Trust Modification

- **Tactic(s):** Defense Impairment, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1484/002/
- **Platforms:** Identity Provider, Windows

## Summary
Adversaries may add new domain trusts, modify the properties of existing domain trusts, or otherwise change the configuration of trust relationships between domains and tenants to evade defenses and/or elevate privileges.Trust details, such as whether or not user identities are federated, allow authentication and authorization properties to apply between domains or tenants for the purpose of accessing shared resources.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Active Directory Domain Trust Created or Modified | [sigma](sigma/win_security_domain_trust_created_or_modified.yml) | [raw](splunk/win_security_domain_trust_created_or_modified.spl) | [SecurityEvent](sentinel/win_security_domain_trust_created_or_modified.kql) | high | experimental |
| Domain Federation or Trust Changed from the Command Line | [sigma](sigma/proc_creation_win_federation_trust_modification.yml) | [raw](splunk/proc_creation_win_federation_trust_modification.spl), [CIM](splunk/proc_creation_win_federation_trust_modification_cim.spl) | [MDE](sentinel/proc_creation_win_federation_trust_modification.kql), [SecurityEvent](sentinel/proc_creation_win_federation_trust_modification_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Planned trust creation or changes during mergers and migrations
- Identity administrators setting up federation or trusts

## Limitations
4706/4716 need 'Audit Authentication Policy Change' on domain controllers. Federation changes made in the Entra admin center or through Graph from another machine appear only in Entra ID audit logs (AuditLogs: Set domain authentication, Set federation settings on domain) - the authoritative source for the cloud part.

## Testing
See [tests/](tests/).
