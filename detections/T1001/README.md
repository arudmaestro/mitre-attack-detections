# T1001 - Data Obfuscation

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may obfuscate command and control traffic to make it more difficult to detect.

## Status: guidance only
Command-and-control traffic obfuscation happens inside network payloads, so process and authentication logs do not show it reliably.

Covered by sub-techniques where a reliable signal exists.

## How to detect it
- Network detection (Zeek, Suricata, NDR) for protocol anomalies and beaconing.
- Proxy and firewall logs: rare destinations, long-lived or periodic connections from a single process.
- Endpoint network telemetry (Sysmon EID 3, DeviceNetworkEvents) to tie suspicious traffic to a process.
