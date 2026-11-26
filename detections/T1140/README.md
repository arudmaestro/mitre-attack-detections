# T1140 - Deobfuscate/Decode Files or Information

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1140/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may use Obfuscated Files or Information to hide artifacts of an intrusion from analysis.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Decoded with certutil | [sigma](sigma/proc_creation_win_certutil_decode.yml) | [raw](splunk/proc_creation_win_certutil_decode.spl), [CIM](splunk/proc_creation_win_certutil_decode_cim.spl) | [MDE](sentinel/proc_creation_win_certutil_decode.kql), [SecurityEvent](sentinel/proc_creation_win_certutil_decode_securityevent.kql) | medium | experimental |
| Base64 Decoded and Piped to a Shell | [sigma](sigma/proc_creation_lnx_base64_decode_to_shell.yml) | [CIM](splunk/proc_creation_lnx_base64_decode_to_shell.spl) | [MDE](sentinel/proc_creation_lnx_base64_decode_to_shell.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators decoding certificates or files
- Installers that ship encoded scripts

## Limitations
The Linux rule needs the pipeline to be inside one command line (e.g. bash -c '...'); pipelines typed into an interactive shell appear as separate processes. PowerShell decoding is covered by T1027.010.

## Testing
See [tests/](tests/).
