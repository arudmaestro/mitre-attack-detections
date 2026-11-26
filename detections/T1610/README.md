# T1610 - Deploy Container

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1610/
- **Platforms:** Containers

## Summary
Adversaries may deploy a container into an environment to facilitate execution or evade defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Privileged or Host-Mounting Container Started | [sigma](sigma/proc_creation_lnx_privileged_container_run.yml) | [CIM](splunk/proc_creation_lnx_privileged_container_run.spl) | [MDE](sentinel/proc_creation_lnx_privileged_container_run.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Monitoring agents and system containers deployed with host access (they usually start from orchestration, not the CLI)

## Limitations
Containers created through the Docker API (socket) or by Kubernetes (privileged pods, hostPath mounts) start no docker command; the Docker events log and the Kubernetes audit log with admission policies (Pod Security Standards 'restricted') cover those.

## Testing
See [tests/](tests/).
