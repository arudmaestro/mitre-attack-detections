# T1137.001 - Office Application Startup: Office Template Macros

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1137/001/
- **Platforms:** Office Suite, Windows

## Summary
Adversaries may abuse Microsoft Office templates to obtain persistence on a compromised system.

## Status: guidance only
Malicious Office templates (Normal.dotm, PERSONAL.XLSB) are modified files, not process events.

## How to detect it
- File events (Sysmon EID 11, DeviceFileEvents) for changes to Normal.dotm and the XLSTART / Templates folders by processes other than Office.
- Block macros from the Internet and require signed macros.
