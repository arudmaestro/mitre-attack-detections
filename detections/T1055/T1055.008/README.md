# T1055.008 - Process Injection: Ptrace System Calls

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/008/
- **Platforms:** Linux

## Summary
Adversaries may inject malicious code into processes via ptrace (process trace) system calls in order to evade process-based defenses as well as possibly elevate privileges.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Debugger or Tracer Attached to a Running Process | [sigma](sigma/proc_creation_lnx_debugger_attach_to_process.yml) | [CIM](splunk/proc_creation_lnx_debugger_attach_to_process.spl) | [MDE](sentinel/proc_creation_lnx_debugger_attach_to_process.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Developers and administrators debugging live processes

## Limitations
Custom injectors call ptrace directly and are not visible in process creation; auditd rules on the ptrace syscall (PTRACE_ATTACH/POKETEXT) cover that. Setting kernel.yama.ptrace_scope to 1 or higher limits the technique.

## Testing
See [tests/](tests/).
