# T1069.003 - Permission Groups Discovery: Cloud Groups

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1069/003/
- **Platforms:** SaaS, IaaS, Office Suite, Identity Provider

## Summary
Adversaries may attempt to find cloud groups and permission settings.

## Status: guidance only
Cloud group enumeration uses read-only API calls that administrators and tools make constantly.

## How to detect it
- Cloud audit logs (AWS IAM ListGroups/GetGroup, Entra ID directory reads via Graph) with UEBA for unusual callers or volume.
