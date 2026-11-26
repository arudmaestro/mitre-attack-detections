# T1535 - Unused/Unsupported Cloud Regions

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1535/
- **Platforms:** IaaS

## Summary
Adversaries may create cloud instances in unused geographic service regions in order to evade detection.

## Status: guidance only
Use of unused cloud regions only stands out against your own list of approved regions, which differs per organisation.

## How to detect it
- CloudTrail: any API activity (especially RunInstances, CreateFunction) in regions outside your approved list; use AWS Organizations SCPs to deny unused regions.
- Write the Splunk/Sentinel query with your allowlist: awsRegion NOT IN (...) / AWSRegion !in (...).
