# T1021.007 - Remote Services: Cloud Services

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/007/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS

## Summary
Adversaries may log into accessible cloud services within a compromised environment using Valid Accounts that are synchronized with or federated to on-premises user identities.

## Status: guidance only
Logging in to cloud services with valid accounts looks like normal sign-ins; detection depends on context (location, device, behaviour).

## How to detect it
- Entra ID SigninLogs / Okta / AWS ConsoleLogin: sign-ins from new countries, ASNs or devices, impossible travel.
- Built-in identity protection analytics (Entra ID Protection, Okta ThreatInsight) and UEBA in Sentinel or Splunk ES.
