# T1564.008 - Hide Artifacts: Email Hiding Rules

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/008/
- **Platforms:** Windows, Linux, macOS, Office Suite

## Summary
Adversaries may use email rules to hide inbound emails in a compromised user's mailbox.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Inbox Rule That Deletes, Moves or Marks Mail as Read Created with PowerShell | [sigma](sigma/proc_creation_win_exchange_inbox_rule_hiding.yml) | [raw](splunk/proc_creation_win_exchange_inbox_rule_hiding.spl), [CIM](splunk/proc_creation_win_exchange_inbox_rule_hiding_cim.spl) | [MDE](sentinel/proc_creation_win_exchange_inbox_rule_hiding.kql), [SecurityEvent](sentinel/proc_creation_win_exchange_inbox_rule_hiding_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Helpdesk and administrators creating rules for users

## Limitations
Rules created in Outlook, OWA or through Graph / EWS are only in the Exchange Online / Microsoft 365 unified audit log (New-InboxRule, Set-InboxRule, UpdateInboxRules operations), which is not a data source of this project yet; that log is where most malicious rules show up. Exchange Online PowerShell run from an attacker machine also leaves no local command line.

## Testing
See [tests/](tests/).
