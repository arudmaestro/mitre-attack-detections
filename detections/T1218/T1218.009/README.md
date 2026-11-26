# T1218.009 - System Binary Proxy Execution: Regsvcs/Regasm

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/009/
- **Platforms:** Windows

## Summary
Adversaries may abuse Regsvcs and Regasm to proxy execution of code through a trusted Windows utility.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Regasm or Regsvcs Loading an Assembly from a User-Writable Folder | [sigma](sigma/proc_creation_win_regasm_regsvcs_user_path.yml) | [raw](splunk/proc_creation_win_regasm_regsvcs_user_path.spl), [CIM](splunk/proc_creation_win_regasm_regsvcs_user_path_cim.spl) | [MDE](sentinel/proc_creation_win_regasm_regsvcs_user_path.kql), [SecurityEvent](sentinel/proc_creation_win_regasm_regsvcs_user_path_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers registering COM assemblies they built in a user folder
- Installers registering assemblies from a temporary folder

## Testing
See [tests/](tests/).
