# T1484.001 - Domain or Tenant Policy Modification: Group Policy Modification

- **Tactic(s):** Defense Impairment, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1484/001/
- **Platforms:** Windows

## Summary
Adversaries may modify Group Policy Objects (GPOs) to subvert the intended discretionary access controls for a domain, usually with the intention of escalating privileges on the domain.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Group Policy Changed with PowerShell or GPO Abuse Tools | [sigma](sigma/proc_creation_win_gpo_modification_tools.yml) | [raw](splunk/proc_creation_win_gpo_modification_tools.spl), [CIM](splunk/proc_creation_win_gpo_modification_tools_cim.spl) | [MDE](sentinel/proc_creation_win_gpo_modification_tools.kql), [SecurityEvent](sentinel/proc_creation_win_gpo_modification_tools_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators managing Group Policy with PowerShell

## Limitations
Most GPO changes are made in the Group Policy Management Console, which leaves no command line. On domain controllers, enable Directory Service Changes auditing and review Security 5136 for groupPolicyContainer objects (gPCFileSysPath, versionNumber, gPCMachineExtensionNames) and file changes under SYSVOL\Policies.

## Testing
See [tests/](tests/).
