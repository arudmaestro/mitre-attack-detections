# T1078.004 - Valid Accounts: Cloud Accounts

- **Tactic(s):** Stealth, Persistence, Privilege Escalation, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1078/004/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS

## Summary
Valid accounts in cloud environments may allow adversaries to perform actions to achieve Initial Access, Persistence, Privilege Escalation, or Defense Evasion.

## Status: guidance only
Cloud account misuse is a legitimate sign-in with stolen credentials or tokens.

## How to detect it
- Entra ID SigninLogs / AWS ConsoleLogin / Okta: risky sign-ins, impossible travel, new ASNs, token replay.
- Identity analytics / UEBA (Entra ID Protection, Defender for Identity, Splunk UBA, Sentinel UEBA): unusual logon time, location, device or host for the account.
