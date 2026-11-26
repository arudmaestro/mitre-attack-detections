# T1119 - Automated Collection

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1119/
- **Platforms:** IaaS, Linux, macOS, Office Suite, SaaS, Windows

## Summary
Once established within a system or network, an adversary may use automated techniques for collecting internal data.

## Status: guidance only
Automated collection is a pattern of many collection actions by a script or tool.

## How to detect it
- Correlate collection detections (T1005, T1039, T1114, T1115, T1113) from the same host and user in a short window.
- File events showing one process reading many documents and writing them to one location.
