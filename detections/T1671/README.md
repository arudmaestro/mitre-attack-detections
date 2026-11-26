# T1671 - Cloud Application Integration

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1671/
- **Platforms:** Office Suite, SaaS

## Summary
Adversaries may achieve persistence by leveraging OAuth application integrations in a software-as-a-service environment.

## Status: guidance only
Malicious OAuth application integrations are created in SaaS tenants and are seen in their audit logs.

## How to detect it
- Entra ID / Google Workspace / Salesforce audit logs: new applications and consent grants with broad scopes (Mail.Read, Files.ReadWrite.All, offline_access), especially by non-admins; Identity-provider logs (Entra ID, Okta, Google Workspace), which are not data sources of this project yet.
- Admin consent workflow and blocking user consent for unverified publishers.
