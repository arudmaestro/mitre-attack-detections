# T1668 - Exclusive Control

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1668/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries who successfully compromise a system may attempt to maintain persistence by “closing the door” behind them – in other words, by preventing other threat actors from initially accessing or maintaining a foothold on the same system.

## Status: guidance only
Exclusive control means the attacker patches or locks the system so other attackers cannot use it; the actions look like administration.

## How to detect it
- Unexpected patches, firewall rules or service changes made by accounts or processes that are not your administrators; file integrity monitoring on internet-facing servers.
- Compare installed patches and configuration with your change records.
