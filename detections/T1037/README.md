# T1037 - Boot or Logon Initialization Scripts

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1037/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may use scripts automatically executed at boot or logon initialization to establish persistence.

## Status: guidance only
Boot or Logon Initialization Scripts is a parent technique; each script location needs its own detection.

Detections live in the sub-technique folders.

## How to detect it
- Use the sub-technique rules (T1037.001 - T1037.005).
