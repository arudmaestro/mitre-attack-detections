# T1041 - Exfiltration Over C2 Channel

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1041/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may steal data by exfiltrating it over an existing command and control channel.

## Status: guidance only
Exfiltration over the existing C2 channel blends with the C2 traffic itself.

## How to detect it
- Proxy/firewall/NDR: unusual upload volume or upload/download ratio to a single external destination.
- C2 detections (T1071 guidance) to find the channel first.
