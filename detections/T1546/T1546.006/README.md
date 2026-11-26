# T1546.006 - Event Triggered Execution: LC_LOAD_DYLIB Addition

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/006/
- **Platforms:** macOS

## Summary
Adversaries may establish persistence by executing malicious content triggered by the execution of tainted binaries.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Mach-O Load Command Injection Tool Executed | [sigma](sigma/proc_creation_macos_dylib_injection_tools.yml) | [CIM](splunk/proc_creation_macos_dylib_injection_tools.spl) | [MDE](sentinel/proc_creation_macos_dylib_injection_tools.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- iOS/macOS developers and researchers patching binaries

## Limitations
The change itself is a file modification; code-signature validation failures (the modified binary loses its valid signature) and file-integrity monitoring of /Applications are stronger signals.

## Testing
See [tests/](tests/).
