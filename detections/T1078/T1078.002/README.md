# T1078.002 - Valid Accounts: Domain Accounts

- **Tactic(s):** Stealth, Persistence, Privilege Escalation, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1078/002/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may obtain and abuse credentials of a domain account as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.

## Status: guidance only
Domain account misuse is a legitimate logon with stolen credentials.

## How to detect it
- Identity analytics / UEBA (Entra ID Protection, Defender for Identity, Splunk UBA, Sentinel UEBA): unusual logon time, location, device or host for the account.
- Logons to sensitive servers by accounts that never used them before (Security 4624 baselining).
