# T1557.002 - Adversary-in-the-Middle: ARP Cache Poisoning

- **Tactic(s):** Credential Access, Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1557/002/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may poison Address Resolution Protocol (ARP) caches to position themselves between the communication of two or more networked devices.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| ARP Spoofing Tool Executed | [sigma](sigma/proc_creation_lnx_arp_spoofing_tools.yml) | [CIM](splunk/proc_creation_lnx_arp_spoofing_tools.spl) | [MDE](sentinel/proc_creation_lnx_arp_spoofing_tools.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Network testing and penetration tests

## Limitations
Spoofing from devices you do not monitor needs network detection: dynamic ARP inspection on switches, arpwatch, or IDS alerts for duplicate IP-to-MAC mappings and gratuitous ARP floods.

## Testing
See [tests/](tests/).
