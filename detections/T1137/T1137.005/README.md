# T1137.005 - Office Application Startup: Outlook Rules

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1137/005/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may abuse Microsoft Outlook rules to obtain persistence on a compromised system.

## Status: guidance only
Malicious Outlook rules (e.g. created with Ruler) are stored in the mailbox.

## How to detect it
- Microsoft 365 audit log: New-InboxRule with start-application actions; Microsoft's rules-and-forms scanning scripts.
- Endpoint: outlook.exe spawning unexpected processes.
