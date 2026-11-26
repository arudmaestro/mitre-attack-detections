# T1611 - Escape to Host

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1611/
- **Platforms:** Windows, Linux, Containers, ESXi

## Summary
Adversaries may break out of a container or virtualized environment to gain access to the underlying host.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Container Escape Command Line | [sigma](sigma/proc_creation_lnx_container_escape_commands.yml) | [CIM](splunk/proc_creation_lnx_container_escape_commands.spl) | [MDE](sentinel/proc_creation_lnx_container_escape_commands.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Node debugging tools and administrators entering the host namespace on purpose

## Limitations
Breakouts through kernel exploits, the Docker socket or writable host mounts use other commands; runtime security tools (Falco, Defender for Containers) watch the system calls. Run containers without CAP_SYS_ADMIN and with user namespaces where possible.

## Testing
See [tests/](tests/).
