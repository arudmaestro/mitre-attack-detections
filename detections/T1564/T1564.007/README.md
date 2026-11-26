# T1564.007 - Hide Artifacts: VBA Stomping

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/007/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may hide malicious Visual Basic for Applications (VBA) payloads embedded within MS Office documents by replacing the VBA source code with benign data.

## Status: guidance only
VBA stomping removes or replaces the VBA source in an Office document while the compiled p-code still runs; the change is inside the file.

## How to detect it
- Document analysis at the mail gateway or sandbox (olevba, pcodedmp compare source with p-code).
- Block macros from the internet (default in current Office) and use the Office child-process rules (T1204.002) for execution.
