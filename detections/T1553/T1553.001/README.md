# T1553.001 - Subvert Trust Controls: Gatekeeper Bypass

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1553/001/
- **Platforms:** macOS

## Summary
Adversaries may modify file attributes and subvert Gatekeeper functionality to evade user prompts and execute untrusted programs.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Quarantine Attribute Removed or Gatekeeper Disabled | [sigma](sigma/proc_creation_macos_gatekeeper_bypass.yml) | [CIM](splunk/proc_creation_macos_gatekeeper_bypass.spl) | [MDE](sentinel/proc_creation_macos_gatekeeper_bypass.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Developers removing quarantine from their own builds; installers

## Limitations
xattr -c (clear all attributes) and files that never get the quarantine attribute (downloaded with curl, extracted by tools that drop it, or copied from some file systems) are not covered.

## Testing
See [tests/](tests/).
