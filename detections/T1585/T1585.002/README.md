# T1585.002 - Establish Accounts: Email Accounts

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1585/002/
- **Platforms:** PRE

## Summary
Adversaries may create email accounts that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Mail security: messages from free-mail or newly registered domains using your executives' display names (display-name impersonation rules in your mail gateway / Defender for Office 365).
- DMARC with p=reject on your own domains so attackers cannot send as you.
