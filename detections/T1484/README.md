# T1484 - Domain or Tenant Policy Modification

- **Tactic(s):** Defense Impairment, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1484/
- **Platforms:** Windows, Identity Provider

## Summary
Adversaries may modify the configuration settings of a domain or identity tenant to evade defenses and/or escalate privileges in centrally managed environments.

## Status: guidance only
Domain or Tenant Policy Modification is a parent technique.

Detections live in the sub-technique folders.

## How to detect it
- Use the sub-technique rules (T1484.001 Group Policy, T1484.002 trust and federation changes).
