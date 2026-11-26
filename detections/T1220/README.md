# T1220 - XSL Script Processing

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1220/
- **Platforms:** Windows

## Summary
Adversaries may bypass application control and obscure execution of code by embedding scripts inside XSL files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Msxsl.exe Executed | [sigma](sigma/proc_creation_win_msxsl_execution.yml) | [raw](splunk/proc_creation_win_msxsl_execution.spl), [CIM](splunk/proc_creation_win_msxsl_execution_cim.spl) | [MDE](sentinel/proc_creation_win_msxsl_execution.kql), [SecurityEvent](sentinel/proc_creation_win_msxsl_execution_securityevent.kql) | high | experimental |
| WMIC Loading a Remote XSL Stylesheet | [sigma](sigma/proc_creation_win_wmic_remote_xsl.yml) | [raw](splunk/proc_creation_win_wmic_remote_xsl.spl), [CIM](splunk/proc_creation_win_wmic_remote_xsl_cim.spl) | [MDE](sentinel/proc_creation_win_wmic_remote_xsl.kql), [SecurityEvent](sentinel/proc_creation_win_wmic_remote_xsl_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers using msxsl for XML transformations
- None expected

## Limitations
WMIC is a removable feature in current Windows 11 builds. Local malicious .xsl files used with /format: are not covered.

## Testing
See [tests/](tests/).
