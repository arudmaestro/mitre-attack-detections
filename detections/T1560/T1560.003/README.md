# T1560.003 - Archive Collected Data: Archive via Custom Method

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1560/003/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may compress or encrypt data that is collected prior to exfiltration using a custom method.

## Status: guidance only
Custom compression or encryption (XOR, custom algorithms) happens inside malware.

## How to detect it
- Look for the result: high-entropy files written shortly before outbound transfers, and network uploads of unusual size (proxy / NDR).
