# T1205.002 - Traffic Signaling: Socket Filters

- **Tactic(s):** Stealth, Persistence, Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1205/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attach filters to a network socket to monitor then activate backdoors used for persistence or command and control.

## Status: guidance only
Socket filters (BPF programs attached to raw sockets) are set through system calls inside a process.

## How to detect it
- Linux auditd / EDR: processes opening raw/packet sockets (socket AF_PACKET) or calling setsockopt SO_ATTACH_FILTER, outside known capture tools.
- Hunt for unexpected processes holding packet sockets (ss -0 -p, /proc/net/packet).
