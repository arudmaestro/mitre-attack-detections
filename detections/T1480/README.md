# T1480 - Execution Guardrails

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1480/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may use execution guardrails to constrain execution or actions based on adversary supplied and environment specific conditions that are expected to be present on the target.

## Status: guidance only
Execution guardrails are checks inside malware (domain name, hostname, files, time) that decide whether it runs.

## How to detect it
- Find the guardrails during malware analysis; on endpoints the checks look like ordinary discovery (see T1082, T1016, T1033 detections).
