# T1029 - Scheduled Transfer

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1029/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may schedule data exfiltration to be performed only at certain times of day or at certain intervals.

## Status: guidance only
Scheduled transfer is a timing pattern of exfiltration, not a single event.

## How to detect it
- Proxy/firewall/NDR: outbound transfers to the same destination at fixed times or intervals.
- Scheduled tasks or cron jobs that run upload tools (see T1053 rules).
