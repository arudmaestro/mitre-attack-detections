# T1059.004 - Command and Scripting Interpreter: Unix Shell

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/004/
- **Platforms:** Linux, macOS

## Summary
Adversaries abuse Unix shells to execute commands and scripts. Redirecting shell I/O to /dev/tcp is a classic reverse shell technique.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| Bash Reverse Shell via /dev/tcp | [sigma](sigma/proc_creation_lnx_bash_reverse_shell.yml) | [CIM](splunk/proc_creation_lnx_bash_reverse_shell.spl) | [MDE](sentinel/proc_creation_lnx_bash_reverse_shell.kql) | experimental |

## Required data sources
CIM `Endpoint.Processes` populated from your Linux endpoint logs (auditd/Sysmon for Linux); Sentinel `DeviceProcessEvents` (MDE for Linux).

The Splunk search uses the CIM `Endpoint.Processes` data model because raw field names depend on your Linux/macOS logging agent. Map it to your own raw events if needed.

## Known false positives & tuning
- Administrator scripts that test TCP connectivity with /dev/tcp

## Testing
See [tests/](tests/).
