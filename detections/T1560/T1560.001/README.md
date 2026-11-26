# T1560.001 - Archive Collected Data: Archive via Utility

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1560/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use utilities to compress and/or encrypt collected data prior to exfiltration.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Password-Protected Archive Created with 7-Zip or WinRAR | [sigma](sigma/proc_creation_win_password_protected_archive.yml) | [raw](splunk/proc_creation_win_password_protected_archive.spl), [CIM](splunk/proc_creation_win_password_protected_archive_cim.spl) | [MDE](sentinel/proc_creation_win_password_protected_archive.kql), [SecurityEvent](sentinel/proc_creation_win_password_protected_archive_securityevent.kql) | medium | experimental |
| Password-Protected Archive Created on Linux | [sigma](sigma/proc_creation_lnx_password_protected_archive.yml) | [CIM](splunk/proc_creation_lnx_password_protected_archive.spl) | [MDE](sentinel/proc_creation_lnx_password_protected_archive.kql) | medium | experimental |
| Password-Protected Archive Created on macOS | [sigma](sigma/proc_creation_macos_password_protected_archive.yml) | [CIM](splunk/proc_creation_macos_password_protected_archive.spl) | [MDE](sentinel/proc_creation_macos_password_protected_archive.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Users and backup jobs creating encrypted archives
- Users creating encrypted archives

## Limitations
Contains matching is case-insensitive in Splunk and Sentinel, so zip's -p (store paths) also matches; it is rarely used. Archives without a password, renamed archivers, and archive libraries in scripts (T1560.002) are not covered; large archives written to Temp or user folders shortly before uploads are worth hunting for.

## Testing
See [tests/](tests/).
