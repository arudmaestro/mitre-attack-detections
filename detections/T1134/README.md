# T1134 - Access Token Manipulation

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1134/
- **Platforms:** Windows

## Summary
Adversaries may modify access tokens to operate under a different user or system security context to perform actions and bypass access controls.

## Status: guidance only
Access Token Manipulation is a parent technique.

## How to detect it
- See T1134.003 (LogonType 9 rule) and T1134.005 (SID History rule); the other sub-techniques are guidance.
