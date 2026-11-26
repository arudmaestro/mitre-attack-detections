# T1114.003 - Email Collection: Email Forwarding Rule

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1114/003/
- **Platforms:** Linux, macOS, Office Suite, Windows

## Summary
Adversaries may set up email forwarding rules to collect sensitive information.

## Status: guidance only
Forwarding rules are created in the mail system (Exchange / Microsoft 365), not by endpoint processes.

## How to detect it
- Microsoft 365 audit log (OfficeActivity): New-InboxRule / Set-InboxRule with ForwardTo, RedirectTo or ForwardAsAttachmentTo; Set-Mailbox with ForwardingSmtpAddress, especially to external domains.
- Exchange transport rules redirecting mail; Defender for Office 365 suspicious forwarding alerts.
