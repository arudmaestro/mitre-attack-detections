# T1525 - Implant Internal Image

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1525/
- **Platforms:** IaaS, Containers

## Summary
Adversaries may implant cloud or container images with malicious code to establish persistence after gaining access to an environment.

## Status: guidance only
Implanting a malicious image happens in a container registry or image pipeline.

## How to detect it
- Registry audit logs (ECR PutImage, ACR/Artifact Registry pushes) from unusual principals or outside CI.
- Image signing and admission control; image scanning for new layers that add users, SSH keys or miners.
