# T1569.002 - System Services: Service Execution

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1569/002/
- **Platforms:** Windows

## Summary
Adversaries may abuse the Windows service control manager to execute malicious commands or payloads.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Service Control Manager Started a Shell or Script Host | [sigma](sigma/proc_creation_win_services_spawns_script_host.yml) | [raw](splunk/proc_creation_win_services_spawns_script_host.spl), [CIM](splunk/proc_creation_win_services_spawns_script_host_cim.spl) | [MDE](sentinel/proc_creation_win_services_spawns_script_host.kql), [SecurityEvent](sentinel/proc_creation_win_services_spawns_script_host_securityevent.kql) | high | experimental |
| Remote Execution Service Binary Running (PsExec, PAExec, RemCom, CSExec) | [sigma](sigma/proc_creation_win_remote_execution_service_binary.yml) | [raw](splunk/proc_creation_win_remote_execution_service_binary.spl), [CIM](splunk/proc_creation_win_remote_execution_service_binary_cim.spl) | [MDE](sentinel/proc_creation_win_remote_execution_service_binary.kql), [SecurityEvent](sentinel/proc_creation_win_remote_execution_service_binary_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Services of backup and management products whose binary path is a script (review and allowlist)
- Administrators using PsExec or PAExec for remote administration

## Limitations
PsExec can rename its service (-r), and tools such as Impacket and Cobalt Strike use random service names; the first rule catches those when the service runs a shell. The new service itself is recorded by Security 4697 (see T1543.003) and System 7045.

## Testing
See [tests/](tests/).
