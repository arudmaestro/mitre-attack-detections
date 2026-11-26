# T1218 - System Binary Proxy Execution

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may bypass process and/or signature-based defenses by proxying execution of malicious content with signed, or otherwise trusted, binaries.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| MSDT Started with Diagnostic Parameters Used by Follina | [sigma](sigma/proc_creation_win_msdt_follina.yml) | [raw](splunk/proc_creation_win_msdt_follina.spl), [CIM](splunk/proc_creation_win_msdt_follina_cim.spl) | [MDE](sentinel/proc_creation_win_msdt_follina.kql), [SecurityEvent](sentinel/proc_creation_win_msdt_follina_securityevent.kql) | high | experimental |
| Rarely Used Windows Binary Known for Proxy Execution | [sigma](sigma/proc_creation_win_rare_proxy_binaries.yml) | [raw](splunk/proc_creation_win_rare_proxy_binaries.spl), [CIM](splunk/proc_creation_win_rare_proxy_binaries_cim.spl) | [MDE](sentinel/proc_creation_win_rare_proxy_binaries.kql), [SecurityEvent](sentinel/proc_creation_win_rare_proxy_binaries_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users running the Program Compatibility Troubleshooter manually
- Driver or software installers that use InfDefaultInstall

## Limitations
Each sub-technique folder covers one binary. msdt.exe is removed in current Windows 11 builds.

## Testing
See [tests/](tests/).
