# T1590.002 - Gather Victim Network Information: DNS

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1590/002/
- **Platforms:** PRE

## Summary
Adversaries may gather information about the victim's DNS that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Block zone transfers (AXFR/IXFR) to anyone except your secondary DNS servers, and alert on refused zone-transfer requests in your DNS server logs.
- Split internal and external DNS so internal names are not published; watch DNS logs for brute-force subdomain enumeration (many NXDOMAIN answers for one source).
