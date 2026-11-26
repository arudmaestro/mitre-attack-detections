# T1048.001 - Exfiltration Over Alternative Protocol: Exfiltration Over Symmetric Encrypted Non-C2 Protocol

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1048/001/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may steal data by exfiltrating it over a symmetrically encrypted network protocol other than that of the existing command and control channel.

## Status: guidance only
Symmetric-encrypted non-C2 protocols (custom encrypted channels) need network-level analysis.

## How to detect it
- NDR: encrypted traffic on non-standard ports, unknown protocols, high outbound volume.
