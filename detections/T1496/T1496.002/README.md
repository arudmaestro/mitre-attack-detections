# T1496.002 - Resource Hijacking: Bandwidth Hijacking

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1496/002/
- **Platforms:** Linux, Windows, macOS, IaaS, Containers

## Summary
Adversaries may leverage the network bandwidth resources of co-opted systems to complete resource-intensive tasks, which may impact system and/or hosted service availability.

## Status: guidance only
Bandwidth hijacking (proxyware, botnet traffic) shows as network usage, not as a distinctive process.

## How to detect it
- Software inventory for proxyware (Honeygain, IPRoyal Pawns, Peer2Profit, PacketStream and similar).
- NetFlow/NDR: sustained outbound traffic or many inbound proxy sessions to hosts that should not serve traffic.
