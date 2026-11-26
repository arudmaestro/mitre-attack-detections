# T1027.004 - Obfuscated Files or Information: Compile After Delivery

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/004/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to make payloads difficult to discover and analyze by delivering files to victims as uncompiled code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| C# or VB.NET Compiler Launched by Script Host or Office | [sigma](sigma/proc_creation_win_compiler_from_script_or_office.yml) | [raw](splunk/proc_creation_win_compiler_from_script_or_office.spl), [CIM](splunk/proc_creation_win_compiler_from_script_or_office_cim.spl) | [MDE](sentinel/proc_creation_win_compiler_from_script_or_office.kql), [SecurityEvent](sentinel/proc_creation_win_compiler_from_script_or_office_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Office add-ins or legacy scripts that compile code at run time

## Limitations
PowerShell Add-Type also launches csc.exe and is very common in legitimate scripts, so PowerShell is not in the parent list. Linux/macOS compile-after-delivery (gcc in /tmp) is not covered.

## Testing
See [tests/](tests/).
