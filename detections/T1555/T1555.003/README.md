# T1555.003 - Credentials from Password Stores: Credentials from Web Browsers

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may acquire credentials from web browsers by reading files specific to the target browser.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Browser Password Store Accessed from the Command Line on Windows | [sigma](sigma/proc_creation_win_browser_password_store_access.yml) | [raw](splunk/proc_creation_win_browser_password_store_access.spl), [CIM](splunk/proc_creation_win_browser_password_store_access_cim.spl) | [MDE](sentinel/proc_creation_win_browser_password_store_access.kql), [SecurityEvent](sentinel/proc_creation_win_browser_password_store_access_securityevent.kql) | medium | experimental |
| Browser Password Store Accessed from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_browser_password_store_access.yml) | [CIM](splunk/proc_creation_lnx_browser_password_store_access.spl) | [MDE](sentinel/proc_creation_lnx_browser_password_store_access.kql) | medium | experimental |
| Browser Password Store Accessed from the Command Line on macOS | [sigma](sigma/proc_creation_macos_browser_password_store_access.yml) | [CIM](splunk/proc_creation_macos_browser_password_store_access.spl) | [MDE](sentinel/proc_creation_macos_browser_password_store_access.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Backup, browser-migration and forensic tools
- Backup and browser-migration scripts

## Limitations
Infostealers usually open these files directly without naming them on a command line; EDR file-access telemetry for browser profile folders and the Chrome 'Local State' key file covers more cases. On macOS, a security find-generic-password call for 'Chrome Safe Storage' is caught by the T1555.001 rule.

## Testing
See [tests/](tests/).
