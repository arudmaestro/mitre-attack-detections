# T1113 - Screen Capture

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1113/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to take screen captures of the desktop to gather information over the course of an operation.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Screen Capture from the Command Line on Windows | [sigma](sigma/proc_creation_win_screen_capture.yml) | [raw](splunk/proc_creation_win_screen_capture.spl), [CIM](splunk/proc_creation_win_screen_capture_cim.spl) | [MDE](sentinel/proc_creation_win_screen_capture.kql), [SecurityEvent](sentinel/proc_creation_win_screen_capture_securityevent.kql) | medium | experimental |
| Silent Screen Capture on macOS | [sigma](sigma/proc_creation_macos_silent_screencapture.yml) | [CIM](splunk/proc_creation_macos_silent_screencapture.spl) | [MDE](sentinel/proc_creation_macos_silent_screencapture.kql) | medium | experimental |
| Screen Capture from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_screen_capture.yml) | [CIM](splunk/proc_creation_lnx_screen_capture.spl) | [MDE](sentinel/proc_creation_lnx_screen_capture.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Support and documentation tools
- Automation or monitoring scripts taking screenshots
- Users taking screenshots from scripts

## Limitations
Screen capture done through APIs inside malware (no helper process) needs EDR telemetry. macOS also requires the Screen Recording permission, so TCC prompts and approvals are another signal.

## Testing
See [tests/](tests/).
