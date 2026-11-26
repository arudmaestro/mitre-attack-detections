# T1650 - Acquire Access

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1650/
- **Platforms:** PRE

## Summary
Adversaries may purchase or otherwise acquire an existing access to a target system or network.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary controls, outside your logs.

## How to detect it
- Initial access broker listings are outside your logs; dark-web monitoring can alert when access to your organisation is offered.
- Look for the access being used: unusual VPN / RDP logins with valid accounts (T1078) and remote-access tools (T1219).
