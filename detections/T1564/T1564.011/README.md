# T1564.011 - Hide Artifacts: Ignore Process Interrupts

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/011/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may evade defensive mechanisms by executing commands that hide from process interrupt signals.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Program in a Temp Folder Started with nohup on Linux | [sigma](sigma/proc_creation_lnx_nohup_from_temp.yml) | [CIM](splunk/proc_creation_lnx_nohup_from_temp.spl) | [MDE](sentinel/proc_creation_lnx_nohup_from_temp.kql) | medium | experimental |
| Program in a Temp Folder Started with nohup on macOS | [sigma](sigma/proc_creation_macos_nohup_from_temp.yml) | [CIM](splunk/proc_creation_macos_nohup_from_temp.spl) | [MDE](sentinel/proc_creation_macos_nohup_from_temp.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Build and test jobs that run programs from /tmp in the background

## Limitations
Processes that ignore signals through 'trap' in a script, disown, setsid or by calling signal() themselves are not covered.

## Testing
See [tests/](tests/).
