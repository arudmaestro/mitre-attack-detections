# T1548.005 - Abuse Elevation Control Mechanism: Temporary Elevated Cloud Access

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1548/005/
- **Platforms:** IaaS, Office Suite, Identity Provider

## Summary
Adversaries may abuse permission configurations that allow them to gain temporarily elevated access to cloud resources.

## Status: guidance only
Temporary elevated cloud access (just-in-time roles, PIM activation, AssumeRole into privileged roles, impersonation) is a normal cloud feature; abuse only shows against who normally uses each role.

## How to detect it
- CloudTrail: AssumeRole / AssumeRoleWithSAML into administrative roles by identities that have not used them before, and iam:PassRole to new services.
- Entra ID PIM and GCP IAM audit logs: role activations outside change windows or by unusual accounts; service account impersonation (GenerateAccessToken) in GCP.
