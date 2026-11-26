# T1134.001 - Access Token Manipulation: Token Impersonation/Theft

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1134/001/
- **Platforms:** Windows

## Summary
Adversaries may duplicate then impersonate another user's existing token to escalate privileges and bypass access controls.

## Status: guidance only
Token impersonation and theft happen through Windows APIs inside a process.

## How to detect it
- EDR detections for token theft, duplication and impersonation (the primary control).
- Hunt: processes running as SYSTEM whose parent runs as a normal user (privilege change between parent and child).
