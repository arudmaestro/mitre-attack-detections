# T1559.001 - Inter-Process Communication: Component Object Model

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1559/001/
- **Platforms:** Windows

## Summary
Adversaries may use the Windows Component Object Model (COM) for local code execution.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| COM Object Created by CLSID or ProgID from the Command Line | [sigma](sigma/proc_creation_win_com_object_instantiation_command_line.yml) | [raw](splunk/proc_creation_win_com_object_instantiation_command_line.spl), [CIM](splunk/proc_creation_win_com_object_instantiation_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_com_object_instantiation_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_com_object_instantiation_command_line_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administration scripts that automate Office, Windows Installer or Shell through COM

## Limitations
New-Object -ComObject, VBScript CreateObject and COM calls from compiled programs are normal and not flagged. COM used for lateral movement (DCOM) is covered by T1021.003; COM hijacking by T1546.015.

## Testing
See [tests/](tests/).
