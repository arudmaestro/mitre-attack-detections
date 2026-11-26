# T1037.002 - Boot or Logon Initialization Scripts: Login Hook

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1037/002/
- **Platforms:** macOS

## Summary
Adversaries may use a Login Hook to establish persistence executed upon user logon.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| macOS Login or Logout Hook Configured | [sigma](sigma/proc_creation_macos_login_hook.yml) | [CIM](splunk/proc_creation_macos_login_hook.spl) | [MDE](sentinel/proc_creation_macos_login_hook.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Legacy management scripts (login hooks are deprecated)

## Testing
See [tests/](tests/).
