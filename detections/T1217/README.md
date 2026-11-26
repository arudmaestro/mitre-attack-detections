# T1217 - Browser Information Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1217/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may enumerate information about browsers to learn more about compromised environments.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Browser Bookmarks or History Read from the Command Line on Windows | [sigma](sigma/proc_creation_win_browser_history_bookmark_access.yml) | [raw](splunk/proc_creation_win_browser_history_bookmark_access.spl), [CIM](splunk/proc_creation_win_browser_history_bookmark_access_cim.spl) | [MDE](sentinel/proc_creation_win_browser_history_bookmark_access.kql), [SecurityEvent](sentinel/proc_creation_win_browser_history_bookmark_access_securityevent.kql) | low | experimental |
| Browser Bookmarks or History Read from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_browser_history_bookmark_access.yml) | [CIM](splunk/proc_creation_lnx_browser_history_bookmark_access.spl) | [MDE](sentinel/proc_creation_lnx_browser_history_bookmark_access.kql) | low | experimental |
| Browser Bookmarks or History Read from the Command Line on macOS | [sigma](sigma/proc_creation_macos_browser_history_bookmark_access.yml) | [CIM](splunk/proc_creation_macos_browser_history_bookmark_access.spl) | [MDE](sentinel/proc_creation_macos_browser_history_bookmark_access.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Backup and browser-migration tools
- Backup and browser-migration scripts

## Limitations
Malware that opens these files directly (without a command line naming them) needs file-access telemetry (Sysmon EID 11 does not cover reads; use EDR or SACL auditing).

## Testing
See [tests/](tests/).
