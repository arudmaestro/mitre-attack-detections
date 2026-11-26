# T1059.011 - Command and Scripting Interpreter: Lua

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/011/
- **Platforms:** Linux, Network Devices, Windows, macOS

## Summary
Adversaries may abuse Lua commands and scripts for execution.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Lua Interpreter Executed on Windows | [sigma](sigma/proc_creation_win_lua_interpreter.yml) | [raw](splunk/proc_creation_win_lua_interpreter.spl), [CIM](splunk/proc_creation_win_lua_interpreter_cim.spl) | [MDE](sentinel/proc_creation_win_lua_interpreter.kql), [SecurityEvent](sentinel/proc_creation_win_lua_interpreter_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers and applications that bundle a Lua interpreter

## Limitations
Lua embedded inside other applications (games, network tools, malware loaders) does not start a Lua process and is not covered.

## Testing
See [tests/](tests/).
