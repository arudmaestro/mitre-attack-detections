# T1552.008 - Unsecured Credentials: Chat Messages

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/008/
- **Platforms:** SaaS, Office Suite

## Summary
Adversaries may directly collect unsecured credentials stored or passed through user communication services.

## Status: guidance only
Credentials posted in chat or collaboration tools are found by searching message history through the service's API.

## How to detect it
- Chat audit logs (Slack, Teams / Purview): large message searches or exports by one user or app, new apps with history-read scopes.
- DLP rules for secrets in messages, and secret scanning of chat exports.
