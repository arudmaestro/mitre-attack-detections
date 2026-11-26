# T1550.001 - Use Alternate Authentication Material: Application Access Token

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1550/001/
- **Platforms:** Containers, IaaS, Identity Provider, Office Suite, SaaS

## Summary
Adversaries may use stolen application access tokens to bypass the typical authentication process and access restricted accounts, information, or services on remote systems.

## Status: guidance only
Stolen application access tokens (OAuth, API, cloud session tokens) are used from another place with no activity on the victim host.

## How to detect it
- Identity-provider and cloud logs: tokens used from new IP addresses, countries or user agents (Entra ID sign-in and Graph activity logs, CloudTrail for temporary credentials used outside AWS).
- Shorter token lifetimes, Continuous Access Evaluation and token binding; revoke refresh tokens after compromise.
