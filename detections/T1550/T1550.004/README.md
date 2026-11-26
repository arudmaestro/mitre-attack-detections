# T1550.004 - Use Alternate Authentication Material: Web Session Cookie

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1550/004/
- **Platforms:** IaaS, Office Suite, SaaS

## Summary
Adversaries can use stolen session cookies to authenticate to web applications and services.

## Status: guidance only
Replayed web session cookies authenticate without a password or MFA, from the attacker's browser.

## How to detect it
- SaaS and identity logs: one session used from two locations, IP or device changes within a session, impossible travel without a new sign-in.
- Token protection / device-bound sessions where available; the T1539 rules cover cookie theft on endpoints.
