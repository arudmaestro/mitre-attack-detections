# T1040 - Network Sniffing

- **Tactic(s):** Credential Access, Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1040/
- **Platforms:** IaaS, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may passively sniff network traffic to capture information about an environment, including authentication material passed over the network.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Packet Capture Started on Windows | [sigma](sigma/proc_creation_win_packet_capture.yml) | [raw](splunk/proc_creation_win_packet_capture.spl), [CIM](splunk/proc_creation_win_packet_capture_cim.spl) | [MDE](sentinel/proc_creation_win_packet_capture.kql), [SecurityEvent](sentinel/proc_creation_win_packet_capture_securityevent.kql) | medium | experimental |
| Packet Capture Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_packet_capture.yml) | [CIM](splunk/proc_creation_lnx_packet_capture.spl) | [MDE](sentinel/proc_creation_lnx_packet_capture.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Network and support engineers troubleshooting
- Administrators troubleshooting network issues

## Limitations
Wireshark started from its GUI launches dumpcap, which is covered. Cloud traffic mirroring is covered by T1020.001.

## Testing
See [tests/](tests/).
