# T1036.003 - Masquerading: Rename Legitimate Utilities

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may rename legitimate / system utilities to try to evade security mechanisms concerning the usage of those utilities.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Renamed Windows Utility (OriginalFileName Mismatch) | [sigma](sigma/proc_creation_win_renamed_system_utility.yml) | [raw](splunk/proc_creation_win_renamed_system_utility.spl), [CIM](splunk/proc_creation_win_renamed_system_utility_cim.spl) | [MDE](sentinel/proc_creation_win_renamed_system_utility.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Software that ships a renamed copy of a Windows utility

## Limitations
Needs the PE OriginalFileName, which Sysmon, CIM (original_file_name) and Defender (ProcessVersionInfoOriginalFileName) provide. Windows 4688 does not, so there is no SecurityEvent variant.

## Testing
See [tests/](tests/).
