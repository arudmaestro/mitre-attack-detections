# T1087.004 - Account Discovery: Cloud Account

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1087/004/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS

## Summary
Adversaries may attempt to get a listing of cloud accounts.

## Status: guidance only
Cloud account discovery uses read-only API calls that administrators and tools make constantly.

## How to detect it
- Cloud audit logs (AWS IAM ListUsers, Entra ID directory reads) with UEBA for unusual callers or volume.
