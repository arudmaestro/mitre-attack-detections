# T1602.001 - Data from Configuration Repository: SNMP (MIB Dump)

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1602/001/
- **Platforms:** Network Devices

## Summary
Adversaries may target the Management Information Base (MIB) to collect and/or mine valuable information in a network managed using Simple Network Management Protocol (SNMP).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SNMP Walk or Community Brute-Force Tool Executed | [sigma](sigma/proc_creation_lnx_snmp_enumeration_tools.yml) | [CIM](splunk/proc_creation_lnx_snmp_enumeration_tools.spl) | [MDE](sentinel/proc_creation_lnx_snmp_enumeration_tools.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Network monitoring servers and administrators troubleshooting SNMP

## Limitations
Run this rule on hosts that should not poll SNMP (exclude your monitoring servers). SNMP requests from scripts and libraries, and walks from Windows tools, are not covered; network devices can log SNMP authentication failures (wrong community) and ACLs should restrict SNMP to monitoring hosts. Prefer SNMPv3.

## Testing
See [tests/](tests/).
