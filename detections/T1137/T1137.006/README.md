# T1137.006 - Office Application Startup: Add-ins

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1137/006/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may abuse Microsoft Office add-ins to obtain persistence on a compromised system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Excel Opened with an XLL Add-in | [sigma](sigma/proc_creation_win_excel_xll_addin_opened.yml) | [raw](splunk/proc_creation_win_excel_xll_addin_opened.spl), [CIM](splunk/proc_creation_win_excel_xll_addin_opened_cim.spl) | [MDE](sentinel/proc_creation_win_excel_xll_addin_opened.kql), [SecurityEvent](sentinel/proc_creation_win_excel_xll_addin_opened_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Finance or analytics teams using approved XLL add-ins

## Limitations
Add-ins registered through the registry (Excel\Options OPEN values) or dropped into the XLSTART folder load without this command line; registry and file telemetry cover those. Word/PowerPoint/Outlook COM add-ins are not covered.

## Testing
See [tests/](tests/).
