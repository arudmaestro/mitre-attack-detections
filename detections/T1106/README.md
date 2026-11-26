# T1106 - Native API

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1106/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may interact with the native OS application programming interface (API) to execute behaviors.

## Status: guidance only
Native API calls happen inside processes and are not logged by process or network telemetry.

## How to detect it
- EDR API telemetry and behavioural detections.
- ETW-based tools for specific API monitoring where available.
