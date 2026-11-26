# T1195.001 - Supply Chain Compromise: Compromise Software Dependencies and Development Tools

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1195/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may manipulate software dependencies and development tools prior to receipt by a final consumer for the purpose of data or system compromise.

## Status: guidance only
Compromised dependencies or developer tools arrive through normal package installs.

## How to detect it
- Software composition analysis and package allowlists in CI/CD.
- Build-server telemetry: package install scripts making network connections or spawning shells.
