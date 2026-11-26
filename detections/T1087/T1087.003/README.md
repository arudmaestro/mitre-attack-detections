# T1087.003 - Account Discovery: Email Account

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1087/003/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may attempt to get a listing of email addresses and accounts.

## Status: guidance only
Email account discovery (Global Address List, mailbox lists) happens through Exchange/Graph APIs, not local processes.

## How to detect it
- Microsoft 365 audit logs and Graph activity logs for bulk directory or GAL reads by unusual apps or users.
