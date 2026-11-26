# T1621 - Multi-Factor Authentication Request Generation

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1621/
- **Platforms:** Windows, Linux, macOS, IaaS, SaaS, Office Suite, Identity Provider

## Summary
Adversaries may attempt to bypass multi-factor authentication (MFA) mechanisms and gain access to accounts by generating MFA requests sent to users.

## Status: guidance only
MFA request generation (push fatigue) is visible in identity-provider logs, not on endpoints.

## How to detect it
- Sign-in logs: many MFA prompts denied or timed out for one user in a short time, followed by an approval (Identity-provider logs (Entra ID, Okta, Google Workspace), which are not data sources of this project yet.)
- Number matching and additional context in push notifications; limit MFA prompts per minute; let users report unexpected prompts.
