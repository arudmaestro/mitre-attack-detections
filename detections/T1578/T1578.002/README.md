# T1578.002 - Modify Cloud Compute Infrastructure: Create Cloud Instance

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1578/002/
- **Platforms:** IaaS

## Summary
An adversary may create a new instance or virtual machine (VM) within the compute service of a cloud account to evade defenses.

## Status: guidance only
Creating cloud instances is normal operations work.

## How to detect it
- CloudTrail baselining: which identities normally call this API, from which IP ranges and regions; alert on new identities or unusual volume. API: RunInstances (and Azure/GCP equivalents).
- Large or GPU instance types, unusual regions, and instances with public IPs and broad security groups created by rarely used identities.
