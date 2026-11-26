# T1111 - Multi-Factor Authentication Interception

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1111/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may target multi-factor authentication (MFA) mechanisms, (i.e., smart cards, token generators, etc.) to gain access to credentials that can be used to access systems, services, and network resources.

## Status: guidance only
MFA interception (SMS interception, token theft, AiTM phishing) happens outside the endpoint's process logs.

## How to detect it
- Identity provider logs: sign-ins with a valid MFA from a new device/location right after the user's own sign-in (AiTM).
- Phishing-resistant MFA (FIDO2) as the primary control.
