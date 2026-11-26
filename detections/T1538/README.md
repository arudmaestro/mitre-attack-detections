# T1538 - Cloud Service Dashboard

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1538/
- **Platforms:** IaaS, SaaS, Office Suite, Identity Provider

## Summary
An adversary may use a cloud service dashboard GUI with stolen credentials to gain useful information from an operational cloud environment, such as specific services, resources, and features.

## Status: guidance only
Cloud console use is normal for administrators; the risk is who signs in and from where.

## How to detect it
- CloudTrail ConsoleLogin and Entra ID / Azure portal sign-ins from new countries, devices or users who normally use only the API.
- Correlate with T1078.004 (valid cloud accounts) anomalies.
