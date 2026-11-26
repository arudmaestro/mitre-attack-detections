# T1570 - Lateral Tool Transfer

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1570/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may transfer tools or other files between systems in a compromised environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Copied to a Remote Admin Share | [sigma](sigma/proc_creation_win_copy_to_admin_share.yml) | [raw](splunk/proc_creation_win_copy_to_admin_share.spl), [CIM](splunk/proc_creation_win_copy_to_admin_share_cim.spl) | [MDE](sentinel/proc_creation_win_copy_to_admin_share.kql), [SecurityEvent](sentinel/proc_creation_win_copy_to_admin_share_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Software deployment and administrators copying files to servers through admin shares

## Limitations
Transfers made by remote-execution tools themselves (PsExec, Impacket, SMB libraries), by RDP drive mapping or over other protocols (SCP, WinRM, HTTP) leave no copy command line. On the target, Security 5145 (network share file access) with write access to ADMIN$ / C$ shows them, but is not a data source of this project yet.

## Testing
See [tests/](tests/).
