# T1569.001 - System Services: Launchctl

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1569/001/
- **Platforms:** macOS

## Summary
Adversaries may abuse launchctl to execute commands or programs.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Program Run with launchctl submit or a Launch Job Loaded from a Temp Folder | [sigma](sigma/proc_creation_macos_launchctl_submit_or_load_from_temp.yml) | [CIM](splunk/proc_creation_macos_launchctl_submit_or_load_from_temp.spl) | [MDE](sentinel/proc_creation_macos_launchctl_submit_or_load_from_temp.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Developer tools and installers using launchctl submit (rare)

## Limitations
Launch agents and daemons loaded from the normal LaunchAgents / LaunchDaemons folders are covered by the T1543.001 and T1543.004 rules. Jobs started through the launchd API (SMAppService, ServiceManagement) start no launchctl process.

## Testing
See [tests/](tests/).
