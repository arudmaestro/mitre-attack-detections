# T1011.001 - Exfiltration Over Other Network Medium: Exfiltration Over Bluetooth

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1011/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to exfiltrate data over Bluetooth rather than the command and control channel.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Bluetooth File Transfer Wizard Execution | [sigma](sigma/proc_creation_win_bluetooth_file_transfer_wizard.yml) | [raw](splunk/proc_creation_win_bluetooth_file_transfer_wizard.spl), [CIM](splunk/proc_creation_win_bluetooth_file_transfer_wizard_cim.spl) | [MDE](sentinel/proc_creation_win_bluetooth_file_transfer_wizard.kql), [SecurityEvent](sentinel/proc_creation_win_bluetooth_file_transfer_wizard_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legitimate Bluetooth file transfers by users

## Limitations
Only covers the built-in Windows wizard. Third-party Bluetooth stacks and OBEX tools need their own rules; on servers and locked-down endpoints any hit is worth reviewing.

## Testing
See [tests/](tests/).
