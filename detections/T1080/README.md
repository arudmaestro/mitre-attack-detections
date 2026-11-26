# T1080 - Taint Shared Content

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1080/
- **Platforms:** Windows, SaaS, Linux, macOS, Office Suite

## Summary
Adversaries may deliver payloads to remote systems by adding content to shared storage locations, such as network drives or internal code repositories.

## Status: guidance only
Tainting shared content means placing malicious files (LNK, scripts, macros) on shares users open.

## How to detect it
- File server auditing or EDR: new executables, LNK or script files written to shared folders by unusual users.
- Gateway/endpoint scanning of files opened from shares.
