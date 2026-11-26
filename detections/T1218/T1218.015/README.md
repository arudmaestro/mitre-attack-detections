# T1218.015 - System Binary Proxy Execution: Electron Applications

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/015/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may abuse components of the Electron framework to execute malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Electron or Chromium Application Started with a Command-Launching Switch | [sigma](sigma/proc_creation_win_electron_cmd_prefix_flags.yml) | [raw](splunk/proc_creation_win_electron_cmd_prefix_flags.spl), [CIM](splunk/proc_creation_win_electron_cmd_prefix_flags_cim.spl) | [MDE](sentinel/proc_creation_win_electron_cmd_prefix_flags.kql), [SecurityEvent](sentinel/proc_creation_win_electron_cmd_prefix_flags_securityevent.kql) | medium | experimental |
| Electron or Chromium Application Started with a Command-Launching Switch on Linux | [sigma](sigma/proc_creation_lnx_electron_cmd_prefix_flags.yml) | [CIM](splunk/proc_creation_lnx_electron_cmd_prefix_flags.spl) | [MDE](sentinel/proc_creation_lnx_electron_cmd_prefix_flags.kql) | medium | experimental |
| Electron or Chromium Application Started with a Command-Launching Switch on macOS | [sigma](sigma/proc_creation_macos_electron_cmd_prefix_flags.yml) | [CIM](splunk/proc_creation_macos_electron_cmd_prefix_flags.spl) | [MDE](sentinel/proc_creation_macos_electron_cmd_prefix_flags.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Developers debugging Chromium or Electron applications

## Limitations
Electron abuse that replaces application files (app.asar) or sets ELECTRON_RUN_AS_NODE does not use these switches; file-integrity monitoring of application folders and EDR cover those.

## Testing
See [tests/](tests/).
