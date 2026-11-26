# T1036.006 - Masquerading: Space after Filename

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/006/
- **Platforms:** Linux, macOS

## Summary
Adversaries can hide a program's true filetype by changing the extension of a file.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Executable File Name Ending with a Space | [sigma](sigma/proc_creation_lnx_executable_name_ends_with_space.yml) | [CIM](splunk/proc_creation_lnx_executable_name_ends_with_space.spl) | [MDE](sentinel/proc_creation_lnx_executable_name_ends_with_space.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- None expected

## Limitations
Also applies to macOS, where Finder opens 'file.txt ' with the default handler for executables; build a macOS copy of the rule if you collect macOS process events.

## Testing
See [tests/](tests/).
