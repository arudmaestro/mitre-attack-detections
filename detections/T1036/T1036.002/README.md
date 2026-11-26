# T1036.002 - Masquerading: Right-to-Left Override

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may abuse the right-to-left override (RTLO or RLO) character (U+202E) to disguise a string and/or file name to make it appear benign.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Right-to-Left Override Character in Command Line | [sigma](sigma/proc_creation_win_right_to_left_override.yml) | [raw](splunk/proc_creation_win_right_to_left_override.spl), [CIM](splunk/proc_creation_win_right_to_left_override_cim.spl) | [MDE](sentinel/proc_creation_win_right_to_left_override.kql), [SecurityEvent](sentinel/proc_creation_win_right_to_left_override_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare: files legitimately named with bidirectional text

## Limitations
The generated queries contain the invisible U+202E character; do not retype them.

## Testing
See [tests/](tests/).
