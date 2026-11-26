# T1055.001 - Process Injection: Dynamic-link Library Injection

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/001/
- **Platforms:** Windows

## Summary
Adversaries may inject dynamic-link libraries (DLLs) into processes in order to evade process-based defenses as well as possibly elevate privileges.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| DLL Injection via mavinject.exe | [sigma](sigma/proc_creation_win_mavinject_dll_injection.yml) | [raw](splunk/proc_creation_win_mavinject_dll_injection.spl), [CIM](splunk/proc_creation_win_mavinject_dll_injection_cim.spl) | [MDE](sentinel/proc_creation_win_mavinject_dll_injection.kql), [SecurityEvent](sentinel/proc_creation_win_mavinject_dll_injection_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Microsoft App-V clients, which use mavinject legitimately

## Limitations
Only covers injection through mavinject. Injection by custom code (CreateRemoteThread + LoadLibrary) needs EDR or Sysmon EID 8 telemetry.

## Testing
See [tests/](tests/).
