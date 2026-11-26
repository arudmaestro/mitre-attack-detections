# T1589.001 - Gather Victim Identity Information: Credentials

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1589/001/
- **Platforms:** PRE

## Summary
Adversaries may gather credentials that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Leaked-credential monitoring for your domains (breach notification services, identity-provider leaked credential detection) and forced resets for exposed accounts.
- Identity-provider sign-in logs for password spraying and credential stuffing (many accounts from one IP, many failures followed by success); see the T1110.003 rule and T1110.004 guidance.
- MFA for every externally reachable sign-in.
