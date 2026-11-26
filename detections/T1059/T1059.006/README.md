# T1059.006 - Command and Scripting Interpreter: Python

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/006/
- **Platforms:** Linux, macOS

## Summary
Adversaries abuse Python to execute commands and payloads. Inline Python that builds sockets or PTYs is a typical reverse shell.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| Python One-Liner with Socket or PTY Shell Primitives | [sigma](sigma/proc_creation_lnx_python_socket_oneliner.yml) | [CIM](splunk/proc_creation_lnx_python_socket_oneliner.spl) | [MDE](sentinel/proc_creation_lnx_python_socket_oneliner.kql) | experimental |

## Required data sources
CIM `Endpoint.Processes` populated from your Linux endpoint logs (auditd/Sysmon for Linux); Sentinel `DeviceProcessEvents` (MDE for Linux).

The Splunk search uses the CIM `Endpoint.Processes` data model because raw field names depend on your Linux/macOS logging agent. Map it to your own raw events if needed.

## Known false positives & tuning
- Developer or admin one-liners that use sockets for connectivity checks

## Testing
See [tests/](tests/).
