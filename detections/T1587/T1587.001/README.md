# T1587.001 - Develop Capabilities: Malware

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1587/001/
- **Platforms:** PRE

## Summary
Adversaries may develop malware and malware components that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Threat intelligence on the adversary's infrastructure and tooling (domains, IP ranges, certificates, file hashes) and blocking known indicators.
- Your endpoint and network detections cover the malware's behaviour once it reaches you; malware analysis and YARA rules for families that target your sector.
