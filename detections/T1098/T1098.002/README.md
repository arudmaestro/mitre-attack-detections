# T1098.002 - Account Manipulation: Additional Email Delegate Permissions

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/002/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may grant additional permission levels to maintain persistent access to an adversary-controlled email account.

## Status: guidance only
Mailbox delegation (FullAccess, SendAs, folder permissions) is configured in Exchange / Microsoft 365.

## How to detect it
- Microsoft 365 audit log (OfficeActivity: Add-MailboxPermission, Add-RecipientPermission, Set-MailboxFolderPermission), especially granting access to many mailboxes or to external accounts.
