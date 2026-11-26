# T1137.003 - Office Application Startup: Outlook Forms

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1137/003/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may abuse Microsoft Outlook forms to obtain persistence on a compromised system.

## Status: guidance only
Malicious Outlook forms are stored in the mailbox and run when a crafted message arrives.

## How to detect it
- Microsoft's Outlook forms/rules scanning scripts (Get-AllTenantRulesAndForms) and Defender for Office 365.
- Endpoint: outlook.exe spawning cmd, PowerShell or script hosts.
