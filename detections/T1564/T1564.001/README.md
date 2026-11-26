# T1564.001 - Hide Artifacts: Hidden Files and Directories

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may set files and directories to be hidden to evade detection mechanisms.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Marked Hidden and System with attrib | [sigma](sigma/proc_creation_win_attrib_hidden_system.yml) | [raw](splunk/proc_creation_win_attrib_hidden_system.spl), [CIM](splunk/proc_creation_win_attrib_hidden_system_cim.spl) | [MDE](sentinel/proc_creation_win_attrib_hidden_system.kql), [SecurityEvent](sentinel/proc_creation_win_attrib_hidden_system_securityevent.kql) | low | experimental |
| File Hidden with chflags or SetFile on macOS | [sigma](sigma/proc_creation_macos_file_hidden_chflags_setfile.yml) | [CIM](splunk/proc_creation_macos_file_hidden_chflags_setfile.spl) | [MDE](sentinel/proc_creation_macos_file_hidden_chflags_setfile.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Installers and desktop.ini management scripts
- Installers hiding helper files

## Limitations
Hiding through APIs (SetFileAttributes) and Linux/macOS dot files (a leading '.' in the name) are not covered; hunt for executables in hidden folders or dot-folders under /tmp, /dev/shm and home directories.

## Testing
See [tests/](tests/).
