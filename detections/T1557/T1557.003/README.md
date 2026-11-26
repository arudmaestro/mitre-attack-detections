# T1557.003 - Adversary-in-the-Middle: DHCP Spoofing

- **Tactic(s):** Credential Access, Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1557/003/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may redirect network traffic to adversary-owned systems by spoofing Dynamic Host Configuration Protocol (DHCP) traffic and acting as a malicious DHCP server on the victim network.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| DHCP or DHCPv6 Spoofing Tool Executed | [sigma](sigma/proc_creation_lnx_dhcp_spoofing_tools.yml) | [CIM](splunk/proc_creation_lnx_dhcp_spoofing_tools.spl) | [MDE](sentinel/proc_creation_lnx_dhcp_spoofing_tools.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Spoofing usually runs from a machine you do not monitor. DHCP snooping and IPv6 RA Guard / DHCPv6 Guard on switches prevent it. Watch for DHCP or DHCPv6 answers from hosts that are not your DHCP servers (network IDS) and for Windows hosts suddenly using an IPv6 DNS server. If IPv6 is unused, prefer IPv4 over IPv6 by policy or block DHCPv6 on the host firewall.

## Testing
See [tests/](tests/).
