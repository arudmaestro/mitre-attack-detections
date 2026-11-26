# T1059.009 - Command and Scripting Interpreter: Cloud API

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/009/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS

## Summary
Adversaries may abuse cloud APIs to execute malicious commands.

## Status: guidance only
Cloud API use is normal administration; only context (who, from where, which API) separates abuse.

## How to detect it
- Cloud audit logs (AWS CloudTrail, Azure Activity, GCP Audit) with UEBA for unusual API callers or source IPs.
- Specific risky API calls are covered by their own techniques (e.g. T1020.001, T1021.008).
