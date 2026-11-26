# T1539 - Steal Web Session Cookie

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1539/
- **Platforms:** Linux, macOS, Office Suite, SaaS, Windows

## Summary
An adversary may steal web application or service session cookies and use them to gain access to web applications or Internet services as an authenticated user without needing credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Browser Cookie Store Accessed from the Command Line on Windows | [sigma](sigma/proc_creation_win_browser_cookie_access.yml) | [raw](splunk/proc_creation_win_browser_cookie_access.spl), [CIM](splunk/proc_creation_win_browser_cookie_access_cim.spl) | [MDE](sentinel/proc_creation_win_browser_cookie_access.kql), [SecurityEvent](sentinel/proc_creation_win_browser_cookie_access_securityevent.kql) | medium | experimental |
| Browser Cookie Store Accessed from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_browser_cookie_access.yml) | [CIM](splunk/proc_creation_lnx_browser_cookie_access.spl) | [MDE](sentinel/proc_creation_lnx_browser_cookie_access.kql) | medium | experimental |
| Browser Cookie Store Accessed from the Command Line on macOS | [sigma](sigma/proc_creation_macos_browser_cookie_access.yml) | [CIM](splunk/proc_creation_macos_browser_cookie_access.spl) | [MDE](sentinel/proc_creation_macos_browser_cookie_access.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Backup, browser-migration and forensic tools
- Backup and browser-migration scripts

## Limitations
Infostealers usually open the cookie files directly without naming them on a command line; EDR file-access telemetry and the remote-debugging rule (T1185) cover more cases. Session cookies replayed from another device show up in identity logs (Entra ID token/session anomalies).

## Testing
See [tests/](tests/).
