# T1204.003 - User Execution: Malicious Image

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1204/003/
- **Platforms:** IaaS, Containers

## Summary
Adversaries may rely on a user running a malicious image to facilitate execution.

## Status: guidance only
A malicious cloud or container image looks like any other image when it is deployed.

## How to detect it
- Container registry / admission control: allow only signed images from approved registries.
- CloudTrail RunInstances / ImportImage with AMIs not owned by your accounts or approved publishers.
- Runtime security (Falco, Defender for Containers) for cryptominers and shells inside new containers.
