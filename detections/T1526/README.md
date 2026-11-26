# T1526 - Cloud Service Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1526/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS

## Summary
An adversary may attempt to enumerate the cloud services running on a system after gaining access.

## Status: guidance only
Cloud service discovery uses the same read APIs administrators use all day.

## How to detect it
- CloudTrail / Azure activity: bursts of List*/Describe*/Get* calls across many services from one principal, especially new keys or unusual user agents (Pacu, ScoutSuite, cloudfox).
- Correlate with T1078.004 (cloud account) anomalies.
