# T1195.002 - Supply Chain Compromise: Compromise Software Supply Chain

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1195/002/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may manipulate application software prior to receipt by a final consumer for the purpose of data or system compromise.

## Status: guidance only
A compromised vendor update is signed and delivered through the normal update channel.

## How to detect it
- Behavioural detections on what the software does after updating (new network destinations, child processes).
- Vendor advisories and threat intelligence; software inventory to scope affected hosts quickly.
