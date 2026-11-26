# T1098.005 - Account Manipulation: Device Registration

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/005/
- **Platforms:** Windows, Identity Provider

## Summary
Adversaries may register a device to an adversary-controlled account.

## Status: guidance only
Device registration happens in the identity provider (Entra ID).

## How to detect it
- Entra ID AuditLogs: 'Register device' / 'Add registered owner to device' shortly after a risky sign-in or from unusual locations.
