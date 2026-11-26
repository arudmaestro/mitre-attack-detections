# T1205.001 - Traffic Signaling: Port Knocking

- **Tactic(s):** Stealth, Persistence, Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1205/001/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may use port knocking to hide open ports used for persistence or command and control.

## Status: guidance only
Port knocking is a sequence of connection attempts to closed ports; it is visible only in network data.

## How to detect it
- Firewall / NDR: the same source hitting several closed ports in a fixed order, followed by a successful connection to a newly opened port.
- Host: knockd or fwknop installed or running (package inventory).
