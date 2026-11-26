# T1608.007 - Stage Capabilities: AI Result Poisoning

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1608/007/
- **Platforms:** PRE

## Summary
Adversaries may manipulate publicly accessible web content to influence generative AI systems or AI-powered search engines into retrieving, citing, or recommending attacker-controlled information.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary controls, outside your logs.

## How to detect it
- Users may get malicious instructions or links from AI answers poisoned by attacker content; treat AI-suggested commands like any copy-pasted command (see T1204.004 rules for pasted commands).
