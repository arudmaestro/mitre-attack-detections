# T1213.005 - Data from Information Repositories: Messaging Applications

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1213/005/
- **Platforms:** Office Suite, SaaS

## Summary
Adversaries may leverage chat and messaging applications, such as Microsoft Teams, Google Chat, and Slack, to mine valuable information.

## Status: guidance only
Messaging data (Teams, Slack) is read through the platform's APIs.

## How to detect it
- Microsoft 365 audit (Teams MessagesListed, chat exports), Slack audit logs: exports, new apps with message-read scopes, mass message reads.
- Watch for searches for credentials in chat (DLP on messaging).
