# T1036.005 - Masquerading: Match Legitimate Resource Name or Location

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/005/
- **Platforms:** Containers, ESXi, Linux, macOS, Windows

## Summary
Adversaries may match or approximate the name or location of legitimate files, Registry keys, or other resources when naming/placing them.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Windows System Process Name Running Outside System Folders | [sigma](sigma/proc_creation_win_system_binary_name_outside_system_dir.yml) | [raw](splunk/proc_creation_win_system_binary_name_outside_system_dir.spl), [CIM](splunk/proc_creation_win_system_binary_name_outside_system_dir_cim.spl) | [MDE](sentinel/proc_creation_win_system_binary_name_outside_system_dir.kql), [SecurityEvent](sentinel/proc_creation_win_system_binary_name_outside_system_dir_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Windows installed on a drive other than C:
- Security tools that copy system binaries for analysis

## Limitations
Assumes Windows is installed on C:. Malware that uses look-alike names (svch0st.exe, scvhost.exe) needs a separate fuzzy-name rule.

## Testing
See [tests/](tests/).
