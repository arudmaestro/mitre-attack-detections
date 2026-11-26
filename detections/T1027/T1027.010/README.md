# T1027.010 - Obfuscated Files or Information: Command Obfuscation

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/010/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may obfuscate content during command execution to impede detection.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Obfuscated PowerShell Execution (Base64 + IEX or Char Join) | [sigma](sigma/proc_creation_win_powershell_obfuscated_execution.yml) | [raw](splunk/proc_creation_win_powershell_obfuscated_execution.spl), [CIM](splunk/proc_creation_win_powershell_obfuscated_execution_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_obfuscated_execution.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_obfuscated_execution_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Some legitimate deployment or management scripts

## Limitations
Obfuscation inside script files is only visible with PowerShell Script Block Logging (4104), which logs the de-obfuscated code. Encoded commands (-EncodedCommand) are covered by the T1059.001 rule.

## Testing
See [tests/](tests/).
