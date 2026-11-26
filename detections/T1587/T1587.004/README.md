# T1587.004 - Develop Capabilities: Exploits

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1587/004/
- **Platforms:** PRE

## Summary
Adversaries may develop exploits that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Patch management and attack-surface reduction; exploit attempts against your systems are seen in WAF / IDS logs and by EDR exploit protection.
- Follow-up behaviour after exploitation (web server or service processes starting shells) is covered by the T1190 / T1203 / T1505.003 rules.
