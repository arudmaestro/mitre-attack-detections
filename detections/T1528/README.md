# T1528 - Steal Application Access Token

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1528/
- **Platforms:** Containers, IaaS, Identity Provider, Office Suite, SaaS

## Summary
Adversaries can steal application access tokens as a means of acquiring credentials to access remote systems and resources.

## Status: guidance only
Application access tokens are stolen through OAuth consent phishing, token theft from hosts, or metadata services.

## How to detect it
- Entra ID audit: Consent to application, new app registrations or service principal credentials, apps requesting high-privilege scopes (Mail.Read, Files.Read.All).
- Sign-ins with tokens from new IPs/devices (token replay), Defender for Cloud Apps OAuth app alerts; IMDS access from unexpected processes in cloud VMs.
