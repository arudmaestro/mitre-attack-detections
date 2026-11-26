# T1588.002 - Obtain Capabilities: Tool

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1588/002/
- **Platforms:** PRE

## Summary
Adversaries may buy, steal, or download software tools that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Tools are detected when they are used: see the rules for specific tools in this project (Mimikatz T1003, Rubeus / Impacket T1558 and T1550, tunneling tools T1572, rclone T1567.002, remote access tools T1219).
- Hunt for files with known offensive-tool hashes, names and PE metadata (OriginalFileName) in EDR inventories.
