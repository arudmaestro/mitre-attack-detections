# T1548.006 - Abuse Elevation Control Mechanism: TCC Manipulation

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1548/006/
- **Platforms:** macOS

## Summary
Adversaries can manipulate or abuse the Transparency, Consent, & Control (TCC) service or database to grant malicious executables elevated permissions.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| TCC Database Accessed from the Command Line | [sigma](sigma/proc_creation_macos_tcc_database_access.yml) | [CIM](splunk/proc_creation_macos_tcc_database_access.spl) | [MDE](sentinel/proc_creation_macos_tcc_database_access.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Security and MDM tools that audit TCC permissions

## Limitations
Writing the user TCC.db requires Full Disk Access, so attackers often abuse a program that already has it (process injection or a trusted app with the permission). Changes made by programs directly need file events for ~/Library/Application Support/com.apple.TCC/ and /Library/Application Support/com.apple.TCC/. Granting permissions through MDM profiles (PPPC) is shown by profile installations.

## Testing
See [tests/](tests/).
