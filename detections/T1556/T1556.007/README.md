# T1556.007 - Modify Authentication Process: Hybrid Identity

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/007/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS, Windows

## Summary
Adversaries may patch, modify, or otherwise backdoor cloud authentication processes that are tied to on-premises user identities in order to bypass typical authentication mechanisms, access credentials, and enable persistent access to accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AADInternals Hybrid Identity Backdoor Command | [sigma](sigma/proc_creation_win_aadinternals_hybrid_identity_backdoor.yml) | [raw](splunk/proc_creation_win_aadinternals_hybrid_identity_backdoor.spl), [CIM](splunk/proc_creation_win_aadinternals_hybrid_identity_backdoor_cim.spl) | [MDE](sentinel/proc_creation_win_aadinternals_hybrid_identity_backdoor.kql), [SecurityEvent](sentinel/proc_creation_win_aadinternals_hybrid_identity_backdoor_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Run these rules on Entra Connect and PTA agent servers at least. Backdoors through federation (T1484.002) and changes made with Microsoft's own tools are visible only in Entra ID audit logs (new PTA agent, domain federation settings), which are not data sources of this project yet.

## Testing
See [tests/](tests/).
