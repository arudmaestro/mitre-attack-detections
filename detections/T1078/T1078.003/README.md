# T1078.003 - Valid Accounts: Local Accounts

- **Tactic(s):** Stealth, Persistence, Privilege Escalation, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1078/003/
- **Platforms:** Containers, ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may obtain and abuse credentials of a local account as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.

## Status: guidance only
Local account misuse (e.g. reused local admin password) looks like a normal local logon; detecting it needs comparing account domain with the host name, which single-event rules cannot do.

## How to detect it
- Hunt: network logons (4624 LogonType 3) where TargetDomainName equals the target computer name, from other workstations.
- Deploy LAPS so local admin passwords are unique.
