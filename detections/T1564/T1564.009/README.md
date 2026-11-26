# T1564.009 - Hide Artifacts: Resource Forking

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/009/
- **Platforms:** macOS

## Summary
Adversaries may abuse resource forks to hide malicious code or executables to evade detection and bypass security applications.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Resource Fork Accessed from the Command Line | [sigma](sigma/proc_creation_macos_resource_fork_access.yml) | [CIM](splunk/proc_creation_macos_resource_fork_access.spl) | [MDE](sentinel/proc_creation_macos_resource_fork_access.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Legacy software and file conversion tools

## Limitations
Resource forks written through the API, xattr -w com.apple.ResourceFork, or extracted by archive tools are not covered (see T1564.014 for xattr writes).

## Testing
See [tests/](tests/).
