# T1027.003 - Obfuscated Files or Information: Steganography

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use steganography techniques in order to prevent the detection of hidden information.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Payload Hidden in Image via copy /b or Steganography Tool | [sigma](sigma/proc_creation_win_steganography_file_concatenation.yml) | [raw](splunk/proc_creation_win_steganography_file_concatenation.spl), [CIM](splunk/proc_creation_win_steganography_file_concatenation_cim.spl) | [MDE](sentinel/proc_creation_win_steganography_file_concatenation.kql), [SecurityEvent](sentinel/proc_creation_win_steganography_file_concatenation_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare legitimate use of copy /b to join files

## Limitations
Payloads embedded by external tooling before delivery leave no command line on the victim; file analysis (YARA, sandboxing) is needed for that.

## Testing
See [tests/](tests/).
