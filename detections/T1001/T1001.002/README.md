# T1001.002 - Data Obfuscation: Steganography

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1001/002/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may use steganographic techniques to hide command and control traffic to make detection efforts more difficult.

## Status: guidance only
Steganography in C2 traffic (for example commands hidden in images downloaded from web services) looks like normal web traffic in logs.

## How to detect it
- Proxy logs: hosts repeatedly downloading images from unusual sites or from paste/image hosts by non-browser processes.
- Endpoint network telemetry: non-browser processes fetching image files.
- File-level steganography on disk is covered by T1027.003.
