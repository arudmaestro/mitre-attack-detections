# T1216 - System Script Proxy Execution

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1216/
- **Platforms:** Windows

## Summary
Adversaries may use trusted scripts, often signed with certificates, to proxy the execution of malicious files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Signed Windows Script Used to Run a Command | [sigma](sigma/proc_creation_win_signed_script_proxy_execution.yml) | [raw](splunk/proc_creation_win_signed_script_proxy_execution.spl), [CIM](splunk/proc_creation_win_signed_script_proxy_execution_cim.spl) | [MDE](sentinel/proc_creation_win_signed_script_proxy_execution.kql), [SecurityEvent](sentinel/proc_creation_win_signed_script_proxy_execution_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Windows troubleshooting packs running their own scripts

## Limitations
Scripts loaded inside an existing PowerShell session do not show on a command line; PowerShell script block logging (EID 4104) records them.

## Testing
See [tests/](tests/).
