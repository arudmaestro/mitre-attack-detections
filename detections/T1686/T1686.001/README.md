# T1686.001 - Disable or Modify System Firewall: Cloud Firewall

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1686/001/
- **Platforms:** IaaS

## Summary
Adversaries may disable or modify a firewall within a cloud environment to bypass controls that limit access to cloud resources.

## Status: guidance only
Cloud firewall changes (security groups, NACLs) are normal operations work; the risk is in what they open. The 0.0.0.0/0 value sits inside nested request parameters that the Splunk field search used by this project cannot match reliably.

## How to detect it
- CloudTrail: AuthorizeSecurityGroupIngress / ModifySecurityGroupRules whose request parameters contain 0.0.0.0/0 or ::/0 on administrative ports (22, 3389, 5985) - Splunk: search the raw term "0.0.0.0/0"; Sentinel: RequestParameters contains "0.0.0.0/0".
- AWS Config rules (restricted-ssh, restricted-common-ports) and Security Hub findings for open security groups.
