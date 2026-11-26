# T1589.002 - Gather Victim Identity Information: Email Addresses

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1589/002/
- **Platforms:** PRE

## Summary
Adversaries may gather email addresses that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Reduce what is exposed: review what your public websites, DNS records, job postings and employee profiles reveal, and remove what attackers do not need.
- Mail gateway logs for directory harvesting (many messages to non-existent addresses from one source) and identity-provider user-enumeration attempts (many 'user not found' errors).
