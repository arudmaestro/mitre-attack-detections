# T1078.001 - Valid Accounts: Default Accounts

- **Tactic(s):** Stealth, Persistence, Privilege Escalation, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1078/001/
- **Platforms:** Containers, ESXi, IaaS, Identity Provider, Linux, macOS, Network Devices, Office Suite, SaaS, Windows

## Summary
Adversaries may obtain and abuse credentials of a default account as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Logon by a Built-in Default Account (Guest, DefaultAccount, WDAGUtilityAccount) | [sigma](sigma/win_security_default_account_logon.yml) | [raw](splunk/win_security_default_account_logon.spl) | [SecurityEvent](sentinel/win_security_default_account_logon.kql) | high | experimental |
| Guest Account Enabled via net user | [sigma](sigma/proc_creation_win_guest_account_enabled.yml) | [raw](splunk/proc_creation_win_guest_account_enabled.spl), [CIM](splunk/proc_creation_win_guest_account_enabled_cim.spl) | [MDE](sentinel/proc_creation_win_guest_account_enabled.kql), [SecurityEvent](sentinel/proc_creation_win_guest_account_enabled_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Kiosk or legacy systems that deliberately use the Guest account
- Microsoft Defender Application Guard, which uses WDAGUtilityAccount on hosts where it is enabled
- Rare: legacy kiosk configuration

## Limitations
The built-in Administrator account (RID 500) is also a default account but is used legitimately in many environments; monitor it by SID with an allowlist of expected hosts. Non-Windows default accounts (network devices, appliances, databases) need their own logs.

## Testing
See [tests/](tests/).
