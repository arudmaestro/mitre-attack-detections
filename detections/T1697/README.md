# T1697 - Steal Application Specific Passwords

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1697/
- **Platforms:** Office Suite, Identity Provider, SaaS

## Summary
Adversaries may steal Application Specific Passwords (ASPs) to gain access to Valid Accounts, bypassing multifactor authentication (MFA) methods.

## Status: guidance only
Application-specific passwords bypass MFA for legacy protocols; their creation and use are in identity-provider logs.

## How to detect it
- Identity-provider audit logs for new app passwords and sign-ins with legacy protocols (IMAP, POP, SMTP AUTH, EWS basic); Identity-provider logs (Entra ID, Okta, Google Workspace), which are not data sources of this project yet.
- Disable app passwords and legacy authentication where possible.
