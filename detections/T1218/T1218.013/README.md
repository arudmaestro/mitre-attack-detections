# T1218.013 - System Binary Proxy Execution: Mavinject

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/013/
- **Platforms:** Windows

## Summary
Adversaries may abuse mavinject.exe to proxy execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Mavinject Injecting a DLL into a Running Process | [sigma](sigma/proc_creation_win_mavinject_injection.yml) | [raw](splunk/proc_creation_win_mavinject_injection.spl), [CIM](splunk/proc_creation_win_mavinject_injection_cim.spl) | [MDE](sentinel/proc_creation_win_mavinject_injection.kql), [SecurityEvent](sentinel/proc_creation_win_mavinject_injection_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Microsoft App-V client injecting its virtualization DLL

## Limitations
If App-V is used, exclude the App-V DLL paths (AppVEntSubsystems) after reviewing them.

## Testing
See [tests/](tests/).
