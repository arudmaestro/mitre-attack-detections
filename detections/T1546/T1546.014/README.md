# T1546.014 - Event Triggered Execution: Emond

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/014/
- **Platforms:** macOS

## Summary
Adversaries may gain persistence and elevate privileges by executing malicious content triggered by the Event Monitor Daemon (emond).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Emond Rules Folder Used from the Command Line | [sigma](sigma/proc_creation_macos_emond_rule_access.yml) | [CIM](splunk/proc_creation_macos_emond_rule_access.spl) | [MDE](sentinel/proc_creation_macos_emond_rule_access.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- None expected on current macOS (emond is deprecated)

## Testing
See [tests/](tests/).
