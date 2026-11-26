# T1114.002 - Email Collection: Remote Email Collection

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1114/002/
- **Platforms:** Office Suite, Windows

## Summary
Adversaries may target an Exchange server, Office 365, or Google Workspace to collect sensitive information.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Mailbox Export or Bulk Mail Search from the Command Line | [sigma](sigma/proc_creation_win_mailbox_export_or_search.yml) | [raw](splunk/proc_creation_win_mailbox_export_or_search.spl), [CIM](splunk/proc_creation_win_mailbox_export_or_search_cim.spl) | [MDE](sentinel/proc_creation_win_mailbox_export_or_search.kql), [SecurityEvent](sentinel/proc_creation_win_mailbox_export_or_search_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Exchange administrators exporting mailboxes for legal hold or migration

## Limitations
Commands run inside an Exchange Management Shell session or remotely through EWS/Graph do not appear as process command lines. Exchange admin audit logs and the Microsoft 365 audit log (MailItemsAccessed, New-MailboxExportRequest) are the authoritative sources.

## Testing
See [tests/](tests/).
