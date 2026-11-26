# T1657 - Financial Theft

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1657/
- **Platforms:** Linux, macOS, Office Suite, SaaS, Windows

## Summary
Adversaries may steal monetary resources from targets through extortion, social engineering, technical theft, or other methods aimed at their own financial gain at the expense of the availability of these resources for victims.

## Status: guidance only
Financial theft is the goal of the attack (extortion, business email compromise, fraud); what you can detect are the steps before it.

## How to detect it
- Business process controls: call-back verification for payment and bank-detail changes, dual approval for large transfers.
- Detections for the preceding steps: mailbox rules (T1564.008), account compromise, ransomware and data theft rules in this project.
