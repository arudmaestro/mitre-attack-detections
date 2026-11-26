# T1218.007 - System Binary Proxy Execution: Msiexec

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/007/
- **Platforms:** Windows

## Summary
Adversaries may abuse msiexec.exe to proxy execution of malicious payloads.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Msiexec Installing from a URL or Registering a DLL | [sigma](sigma/proc_creation_win_msiexec_remote_or_dll.yml) | [raw](splunk/proc_creation_win_msiexec_remote_or_dll.spl), [CIM](splunk/proc_creation_win_msiexec_remote_or_dll_cim.spl) | [MDE](sentinel/proc_creation_win_msiexec_remote_or_dll.kql), [SecurityEvent](sentinel/proc_creation_win_msiexec_remote_or_dll_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Software deployment that installs MSI packages from an internal web server

## Testing
See [tests/](tests/).
