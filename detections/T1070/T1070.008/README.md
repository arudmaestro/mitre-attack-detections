# T1070.008 - Indicator Removal: Clear Mailbox Data

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/008/
- **Platforms:** Linux, macOS, Office Suite, Windows

## Summary
Adversaries may modify mail and mail application data to remove evidence of their activity.

## Status: guidance only
Mailbox data deletion happens in Exchange or Microsoft 365 and is recorded in their audit logs, not endpoint logs.

## How to detect it
- Microsoft 365 unified audit log (OfficeActivity: HardDelete, SoftDelete, MoveToDeletedItems in bulk, New-ComplianceSearchAction -Purge).
- Exchange admin audit log for Search-Mailbox -DeleteContent and Remove-MailboxExportRequest.
