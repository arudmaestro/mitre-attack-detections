# T1059.013 - Command and Scripting Interpreter: Container CLI/API

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/013/
- **Platforms:** Containers

## Summary
Adversaries may abuse built-in CLI tools or API calls to execute malicious commands in containerized environments.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Command Executed Inside a Container via exec | [sigma](sigma/proc_creation_lnx_container_exec.yml) | [CIM](splunk/proc_creation_lnx_container_exec.spl) | [MDE](sentinel/proc_creation_lnx_container_exec.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Developers and operators troubleshooting containers

## Limitations
Calls made directly to the Docker or Kubernetes API (no CLI) are not visible here; Kubernetes audit logs (pods/exec) and Docker daemon logs cover those.

## Testing
See [tests/](tests/).
