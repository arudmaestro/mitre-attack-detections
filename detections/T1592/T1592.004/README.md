# T1592.004 - Gather Victim Host Information: Client Configurations

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1592/004/
- **Platforms:** PRE

## Summary
Adversaries may gather information about the victim's client configurations that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Browser and client fingerprinting happens on attacker-controlled web pages; it leaves nothing in your logs. Limit the information browsers expose (user agent reduction, blocking third-party scripts) and use the phishing and drive-by detections.
