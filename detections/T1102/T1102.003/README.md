# T1102.003 - Web Service: One-Way Communication

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1102/003/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may use an existing, legitimate external Web service as a means for sending commands to a compromised system without receiving return output over the Web service channel.

## Status: guidance only
One-way C2 via web services (commands only) is the same traffic pattern as normal web use.

## How to detect it
- Proxy: periodic requests from non-browser processes to the same web service.
