# T1104 - Multi-Stage Channels

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1104/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may create multiple stages for command and control that are employed under different conditions or for certain functions.

## Status: guidance only
Multi-stage channels are an architecture (several C2 stages), not one observable event.

## How to detect it
- Detect each stage with the C2 and ingress-transfer detections (T1071, T1105).
