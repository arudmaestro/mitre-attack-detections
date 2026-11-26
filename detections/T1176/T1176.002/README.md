# T1176.002 - Software Extensions: IDE Extensions

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1176/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may abuse an integrated development environment (IDE) extension to establish persistent access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| IDE Extension Installed from a VSIX File | [sigma](sigma/proc_creation_win_vscode_vsix_install.yml) | [raw](splunk/proc_creation_win_vscode_vsix_install.spl), [CIM](splunk/proc_creation_win_vscode_vsix_install_cim.spl) | [MDE](sentinel/proc_creation_win_vscode_vsix_install.kql), [SecurityEvent](sentinel/proc_creation_win_vscode_vsix_install_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers installing internal or offline extensions

## Limitations
Extensions installed from the marketplace by name, or by copying files into the extensions folder, are not covered; extension inventory from your endpoint management tool complements this rule.

## Testing
See [tests/](tests/).
