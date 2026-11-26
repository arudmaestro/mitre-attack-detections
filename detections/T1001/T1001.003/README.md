# T1001.003 - Data Obfuscation: Protocol or Service Impersonation

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1001/003/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may impersonate legitimate protocols or web service traffic to disguise command and control activity and thwart analysis efforts.

## Status: guidance only
Impersonated protocols (fake TLS, HTTP that mimics a known service) need protocol-aware inspection.

## How to detect it
- NDR/IDS: protocol on a non-standard port, JA3/JA4 TLS fingerprints that do not match the claimed client.
- Proxy logs: user agents that do not match the sending process or OS.
