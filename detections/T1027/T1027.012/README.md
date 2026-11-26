# T1027.012 - Obfuscated Files or Information: LNK Icon Smuggling

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/012/
- **Platforms:** Windows

## Summary
Adversaries may smuggle commands to download malicious payloads past content filters by hiding them within otherwise seemingly benign windows shortcut files.

## Status: guidance only
LNK icon smuggling hides a payload URL in a shortcut's IconLocation; it is a property of the .lnk file.

## How to detect it
- Gateway and endpoint scanning of .lnk files for remote (http/UNC) IconLocation values.
- Endpoint network telemetry: explorer.exe making outbound requests right after a .lnk is viewed.
