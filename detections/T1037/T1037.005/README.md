# T1037.005 - Boot or Logon Initialization Scripts: Startup Items

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1037/005/
- **Platforms:** macOS

## Summary
Adversaries may use startup items automatically executed at boot initialization to establish persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| macOS StartupItems Folder Referenced | [sigma](sigma/proc_creation_macos_startup_items.yml) | [CIM](splunk/proc_creation_macos_startup_items.spl) | [MDE](sentinel/proc_creation_macos_startup_items.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Legacy software installers

## Testing
See [tests/](tests/).
