# T1008 - Fallback Channels

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1008/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may use fallback or alternate communication channels if the primary channel is compromised or inaccessible in order to maintain reliable command and control and to avoid data transfer thresholds.

## Status: guidance only
Fallback channels are a behaviour across time (switching C2 destinations or protocols), not a single log event.

## How to detect it
- Hunt for hosts that contact several new external destinations after a blocked or failed connection.
- Correlate firewall/proxy blocks with new outbound protocols (DNS, ICMP, alternate ports) from the same process.
