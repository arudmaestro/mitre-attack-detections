# T1608.004 - Stage Capabilities: Drive-by Target

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1608/004/
- **Platforms:** PRE

## Summary
Adversaries may prepare an operational environment to infect systems that visit a website over the normal course of browsing.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary controls, outside your logs.

## How to detect it
- Proxy / web filtering with category and reputation blocking; browser isolation; EDR for browser child processes and downloads run by users (T1204.002 rules, T1189 guidance).
