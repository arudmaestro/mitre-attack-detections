# T1110.004 - Brute Force: Credential Stuffing

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1110/004/
- **Platforms:** Containers, ESXi, IaaS, Identity Provider, Linux, macOS, Network Devices, Office Suite, SaaS, Windows

## Summary
Adversaries may use credentials obtained from breach dumps of unrelated accounts to gain access to target accounts through credential overlap.

## Status: guidance only
Credential stuffing uses valid username/password pairs from breaches, often at low volume per account.

## How to detect it
- Identity provider sign-in logs: many accounts failing then one succeeding from the same source, known bad IPs.
- Breached-password protection (Entra ID Password Protection, HIBP checks).
