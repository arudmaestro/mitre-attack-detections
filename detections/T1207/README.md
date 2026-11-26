# T1207 - Rogue Domain Controller

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1207/
- **Platforms:** Windows

## Summary
Adversaries may register a rogue Domain Controller to enable manipulation of Active Directory data.

## Status: guidance only
DCShadow registers a workstation as a temporary domain controller using directory replication; it needs Directory Service change auditing and DC-side network data, and the event fields vary by connector.

## How to detect it
- Security 4742 (computer account changed) adding the replication SPN E3514235-4B06-11D1-AB04-00C04FC2DCD2 or GC/ SPNs to a host that is not a domain controller.
- Security 5137 / 5141: nTDSDSA objects created and deleted in the Configuration partition within minutes.
- Network / Defender for Identity: DRSUAPI replication requests from IP addresses that are not domain controllers.
