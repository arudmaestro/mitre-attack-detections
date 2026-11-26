# T1673 - Virtual Machine Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1673/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
An adversary may attempt to enumerate running virtual machines (VMs) after gaining access to a host or hypervisor.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Virtual Machines Enumerated on a Windows Host | [sigma](sigma/proc_creation_win_virtual_machine_discovery.yml) | [raw](splunk/proc_creation_win_virtual_machine_discovery.spl), [CIM](splunk/proc_creation_win_virtual_machine_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_virtual_machine_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_virtual_machine_discovery_securityevent.kql) | low | experimental |
| Virtual Machines Enumerated on a Linux Host | [sigma](sigma/proc_creation_lnx_virtual_machine_discovery.yml) | [CIM](splunk/proc_creation_lnx_virtual_machine_discovery.spl) | [MDE](sentinel/proc_creation_lnx_virtual_machine_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Hyper-V and virtualisation administrators, backup software
- Virtualisation administrators and monitoring scripts

## Limitations
Commands typed in the ESXi shell itself are logged only on the ESXi host (shell.log, hostd.log), which is not a data source of this project yet; forward ESXi syslog and alert on vim-cmd / esxcli vm commands there.

## Testing
See [tests/](tests/).
