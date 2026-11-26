# T1543.004 - Create or Modify System Process: Launch Daemon

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1543/004/
- **Platforms:** macOS

## Summary
Adversaries may create or modify Launch Daemons to execute malicious payloads as part of persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Launch Daemon Created or Loaded from the Command Line | [sigma](sigma/proc_creation_macos_launch_daemon_created_or_loaded.yml) | [CIM](splunk/proc_creation_macos_launch_daemon_created_or_loaded.spl) | [MDE](sentinel/proc_creation_macos_launch_daemon_created_or_loaded.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Software installers registering daemons

## Limitations
Daemons written by installers or malware directly need file events or Endpoint Security BTM (background task management) events.

## Testing
See [tests/](tests/).
