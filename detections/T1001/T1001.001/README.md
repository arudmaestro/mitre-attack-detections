# T1001.001 - Data Obfuscation: Junk Data

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1001/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may add junk data to protocols used for command and control to make detection more difficult.

## Status: guidance only
Junk data padding in C2 protocols is only visible in packet content or traffic statistics.

## How to detect it
- NDR/IDS analysis of payload entropy and size distributions per destination.
- Beaconing analytics on proxy/firewall logs (regular intervals, consistent byte counts).
