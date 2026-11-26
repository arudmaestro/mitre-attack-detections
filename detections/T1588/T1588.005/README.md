# T1588.005 - Obtain Capabilities: Exploits

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1588/005/
- **Platforms:** PRE

## Summary
Adversaries may buy, steal, or download exploits that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Patch management prioritised by known-exploited vulnerability lists (e.g. CISA KEV); exploit attempts show in WAF / IDS / EDR exploit-protection logs.
- Post-exploitation behaviour is covered by the T1190 / T1203 rules and the T1068 guidance.
