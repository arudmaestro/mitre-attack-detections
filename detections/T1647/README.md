# T1647 - Plist File Modification

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1647/
- **Platforms:** macOS

## Summary
Adversaries may modify property list files (plist files) to enable other malicious activity, while also potentially evading and bypassing system defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Application Info.plist or Launch Environment Changed from the Command Line | [sigma](sigma/proc_creation_macos_app_plist_modified.yml) | [CIM](splunk/proc_creation_macos_app_plist_modified.spl) | [MDE](sentinel/proc_creation_macos_app_plist_modified.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Developers and build scripts editing their own app bundles

## Limitations
Plists edited by programs directly or with an editor, and changes to launch agent / daemon plists (T1543.001 / .004), are not covered. Modifying a signed app's Info.plist breaks its signature, so Gatekeeper / code-signing checks of changed apps help.

## Testing
See [tests/](tests/).
