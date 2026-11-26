# T1649 - Steal or Forge Authentication Certificates

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1649/
- **Platforms:** Windows, Linux, macOS, Identity Provider

## Summary
Adversaries may steal or forge certificates used for authentication to access remote systems or resources.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AD CS Certificate Abuse Tool Command Line on Windows | [sigma](sigma/proc_creation_win_adcs_abuse_tools.yml) | [raw](splunk/proc_creation_win_adcs_abuse_tools.spl), [CIM](splunk/proc_creation_win_adcs_abuse_tools_cim.spl) | [MDE](sentinel/proc_creation_win_adcs_abuse_tools.kql), [SecurityEvent](sentinel/proc_creation_win_adcs_abuse_tools_securityevent.kql) | high | experimental |
| AD CS Certificate Abuse Tool Command Line on Linux | [sigma](sigma/proc_creation_lnx_adcs_abuse_tools.yml) | [CIM](splunk/proc_creation_lnx_adcs_abuse_tools.spl) | [MDE](sentinel/proc_creation_lnx_adcs_abuse_tools.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
On the CA, Security events 4886 / 4887 (certificate requested / issued) with a subject alternative name that differs from the requester, and certificates issued from templates with ENROLLEE_SUPPLIES_SUBJECT, show ESC1-style abuse; these events are not data sources of this project yet. Audit templates with Certify find / Certipy find yourself and fix ESC1-ESC8 issues.

## Testing
See [tests/](tests/).
