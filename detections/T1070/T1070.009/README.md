# T1070.009 - Indicator Removal: Clear Persistence

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/009/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may clear artifacts associated with previously established persistence on a host system to remove evidence of their activity.

## Status: guidance only
Clearing persistence means removing previously created tasks, services, or registry keys; the deletion events depend on each mechanism.

## How to detect it
- Windows Security 4699 (task deleted), 7036/7045 service changes, registry deletion telemetry (Sysmon EID 12).
- Correlate removal of persistence with earlier suspicious creation on the same host.
