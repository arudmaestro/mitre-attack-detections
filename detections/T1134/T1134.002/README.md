# T1134.002 - Access Token Manipulation: Create Process with Token

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1134/002/
- **Platforms:** Windows

## Summary
Adversaries may create a new process with an existing token to escalate privileges and bypass access controls.

## Status: guidance only
Creating a process with a stolen or duplicated token (CreateProcessWithTokenW) is an API action.

## How to detect it
- EDR detections for token theft, duplication and impersonation (the primary control).
- Hunt: child processes running as a different user than their parent, excluding known services (runas, scheduled tasks).
