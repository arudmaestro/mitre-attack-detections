# T1218.012 - System Binary Proxy Execution: Verclsid

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/012/
- **Platforms:** Windows

## Summary
Adversaries may abuse verclsid.exe to proxy execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Verclsid Started by a Process Other than Explorer | [sigma](sigma/proc_creation_win_verclsid_unusual_parent.yml) | [raw](splunk/proc_creation_win_verclsid_unusual_parent.spl), [CIM](splunk/proc_creation_win_verclsid_unusual_parent_cim.spl) | [MDE](sentinel/proc_creation_win_verclsid_unusual_parent.kql), [SecurityEvent](sentinel/proc_creation_win_verclsid_unusual_parent_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Other shell hosts (file dialogs in applications) that verify shell extensions

## Limitations
Tune by reviewing which parents start verclsid in your environment; open/save dialogs in some applications start it too.

## Testing
See [tests/](tests/).
