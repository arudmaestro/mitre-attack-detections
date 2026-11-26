# T1557.004 - Adversary-in-the-Middle: Evil Twin

- **Tactic(s):** Credential Access, Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1557/004/
- **Platforms:** Network Devices

## Summary
Adversaries may host seemingly genuine Wi-Fi access points to deceive users into connecting to malicious networks as a way of supporting follow-on behaviors such as Network Sniffing, Transmitted Data Manipulation, or Input Capture.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Rogue Wi-Fi Access Point Tool Executed | [sigma](sigma/proc_creation_lnx_rogue_access_point_tools.yml) | [CIM](splunk/proc_creation_lnx_rogue_access_point_tools.spl) | [MDE](sentinel/proc_creation_lnx_rogue_access_point_tools.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Wireless security assessments

## Limitations
Evil-twin access points are almost always run from attacker hardware. Wireless intrusion detection (rogue AP detection in your Wi-Fi controller) is the primary control; use WPA2/WPA3-Enterprise with server certificate validation so clients refuse unknown networks.

## Testing
See [tests/](tests/).
