# T1102.001 - Web Service: Dead Drop Resolver

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1102/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may use an existing, legitimate external Web service to host information that points to additional command and control (C2) infrastructure.

## Status: guidance only
Dead drop resolvers read C2 addresses from legitimate sites (paste sites, social media, cloud docs).

## How to detect it
- Proxy logs: non-browser processes contacting paste sites, social media or public cloud documents.
- Endpoint network telemetry to attribute those requests to a process.
