# T1580 - Cloud Infrastructure Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1580/
- **Platforms:** IaaS

## Summary
An adversary may attempt to discover infrastructure and resources that are available within an infrastructure-as-a-service (IaaS) environment.

## Status: guidance only
Cloud infrastructure discovery uses Describe/List API calls that tools and consoles make constantly.

## How to detect it
- CloudTrail: bursts of Describe*/List*/Get* calls across many services by one identity in a short time, especially from new IPs or with many AccessDenied errors.
- GuardDuty Discovery findings and IAM Access Analyzer.
