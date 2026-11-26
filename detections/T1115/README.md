# T1115 - Clipboard Data

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1115/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may collect data stored in the clipboard from users copying information within or between applications.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Clipboard Read from PowerShell | [sigma](sigma/proc_creation_win_clipboard_read.yml) | [raw](splunk/proc_creation_win_clipboard_read.spl), [CIM](splunk/proc_creation_win_clipboard_read_cim.spl) | [MDE](sentinel/proc_creation_win_clipboard_read.kql), [SecurityEvent](sentinel/proc_creation_win_clipboard_read_securityevent.kql) | low | experimental |
| Clipboard Read with xclip or xsel | [sigma](sigma/proc_creation_lnx_clipboard_read.yml) | [CIM](splunk/proc_creation_lnx_clipboard_read.spl) | [MDE](sentinel/proc_creation_lnx_clipboard_read.kql) | low | experimental |
| Clipboard Read with pbpaste | [sigma](sigma/proc_creation_macos_pbpaste.yml) | [CIM](splunk/proc_creation_macos_pbpaste.spl) | [MDE](sentinel/proc_creation_macos_pbpaste.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Admin and productivity scripts that use the clipboard
- Users and scripts using the clipboard from the terminal

## Limitations
Clipboard theft by malware through APIs (no helper process) needs EDR telemetry. These rules are for hunting and correlation.

## Testing
See [tests/](tests/).
