# T1136.002 - Create Account: Domain Account

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1136/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may create a domain account to maintain access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Domain Account Created from the Command Line | [sigma](sigma/proc_creation_win_domain_account_created.yml) | [raw](splunk/proc_creation_win_domain_account_created.spl), [CIM](splunk/proc_creation_win_domain_account_created_cim.spl) | [MDE](sentinel/proc_creation_win_domain_account_created.kql), [SecurityEvent](sentinel/proc_creation_win_domain_account_created_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and identity provisioning scripts

## Limitations
Accounts created in ADUC or by identity management systems are covered by the 4720 rule in the parent T1136 folder (on domain controllers).

## Testing
See [tests/](tests/).
