# T1620 - Reflective Code Loading

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1620/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may reflectively load code into a process in order to conceal the execution of malicious payloads.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Reflective .NET Assembly or PE Load from the Command Line | [sigma](sigma/proc_creation_win_powershell_reflective_assembly_load.yml) | [raw](splunk/proc_creation_win_powershell_reflective_assembly_load.spl), [CIM](splunk/proc_creation_win_powershell_reflective_assembly_load_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_reflective_assembly_load.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_reflective_assembly_load_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administration tools that load embedded assemblies from scripts (rare on a command line)

## Limitations
Reflective loading inside scripts (not on the command line), in compiled loaders (execute-assembly, Donut shellcode) and from obfuscated strings is not covered; PowerShell script block logging (4104) and AMSI / EDR memory scanning see those, but 4104 is not a data source of this project yet.

## Testing
See [tests/](tests/).
