# T1543.001 - Create or Modify System Process: Launch Agent

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1543/001/
- **Platforms:** macOS

## Summary
Adversaries may create or modify launch agents to repeatedly execute malicious payloads as part of persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Launch Agent Created or Loaded from the Command Line | [sigma](sigma/proc_creation_macos_launch_agent_created_or_loaded.yml) | [CIM](splunk/proc_creation_macos_launch_agent_created_or_loaded.spl) | [MDE](sentinel/proc_creation_macos_launch_agent_created_or_loaded.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Software installers and Homebrew services registering agents

## Limitations
Agents written by installers or malware directly (no helper tool) need file events; macOS 13+ also shows background item notifications (BTM events in the unified log / Endpoint Security).

## Testing
See [tests/](tests/).
