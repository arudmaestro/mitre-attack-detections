# T1102.002 - Web Service: Bidirectional Communication

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1102/002/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may use an existing, legitimate external Web service as a means for sending commands to and receiving output from a compromised system over the Web service channel.

## Status: guidance only
Bidirectional C2 over legitimate web services (cloud storage, chat apps) blends with business traffic.

## How to detect it
- Proxy/CASB: non-browser processes using cloud storage or chat APIs; unusual upload volume to personal accounts.
