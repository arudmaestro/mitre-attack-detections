# T1675 - ESXi Administration Command

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1675/
- **Platforms:** ESXi

## Summary
Adversaries may abuse ESXi administration services to execute commands on guest machines hosted within an ESXi virtual environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| VMware Tools Started a Shell or Script Host | [sigma](sigma/proc_creation_win_vmtoolsd_spawns_shell.yml) | [raw](splunk/proc_creation_win_vmtoolsd_spawns_shell.spl), [CIM](splunk/proc_creation_win_vmtoolsd_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_vmtoolsd_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_vmtoolsd_spawns_shell_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- VMware administrators running guest scripts with PowerCLI Invoke-VMScript

## Limitations
Linux guests run guest operations through vmtoolsd too (parent /usr/bin/vmtoolsd). On the ESXi host and vCenter, guest operations are logged in hostd.log / vCenter events (StartProgramInGuest), which are not data sources of this project yet.

## Testing
See [tests/](tests/).
