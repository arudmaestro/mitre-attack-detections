# T1078 - Valid Accounts

- **Tactic(s):** Stealth, Persistence, Privilege Escalation, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1078/
- **Platforms:** Containers, ESXi, IaaS, Identity Provider, Linux, macOS, Network Devices, Office Suite, SaaS, Windows

## Summary
Adversaries may obtain and abuse credentials of existing accounts as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.

## Status: guidance only
Valid Accounts is a parent technique; misuse of valid credentials is detected by context, not a single event.

## How to detect it
- See the sub-technique folders (T1078.001 has rules).
- Identity analytics / UEBA (Entra ID Protection, Defender for Identity, Splunk UBA, Sentinel UEBA): unusual logon time, location, device or host for the account.
