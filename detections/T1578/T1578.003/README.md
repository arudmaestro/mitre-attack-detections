# T1578.003 - Modify Cloud Compute Infrastructure: Delete Cloud Instance

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1578/003/
- **Platforms:** IaaS

## Summary
An adversary may delete a cloud instance after they have performed malicious activities in an attempt to evade detection and remove evidence of their presence.

## Status: guidance only
Deleting cloud instances is normal operations work; it matters after other suspicious activity.

## How to detect it
- CloudTrail baselining: which identities normally call this API, from which IP ranges and regions; alert on new identities or unusual volume. API: TerminateInstances; correlate with earlier suspicious RunInstances by the same identity.
- Enable termination protection for important instances.
