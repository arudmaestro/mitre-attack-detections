# T1548.004 - Abuse Elevation Control Mechanism: Elevated Execution with Prompt

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1548/004/
- **Platforms:** macOS

## Summary
Adversaries may leverage the AuthorizationExecuteWithPrivileges API to escalate privileges by prompting the user for credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| osascript Shell Script Run with Administrator Privileges | [sigma](sigma/proc_creation_macos_osascript_admin_privileges.yml) | [CIM](splunk/proc_creation_macos_osascript_admin_privileges.spl) | [MDE](sentinel/proc_creation_macos_osascript_admin_privileges.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Installers and admin scripts that ask for elevation with osascript

## Limitations
AuthorizationExecuteWithPrivileges and other Authorization Services calls made by programs start no osascript process; EDR telemetry for the security_authtrampoline helper (/usr/libexec/security_authtrampoline) shows those.

## Testing
See [tests/](tests/).
