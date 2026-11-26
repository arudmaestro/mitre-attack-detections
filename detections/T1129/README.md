# T1129 - Shared Modules

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1129/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may execute malicious payloads via loading shared modules.

## Status: guidance only
Loading shared modules (DLLs, .so, dylibs) is normal OS behaviour; abuse is in what is loaded.

## How to detect it
- Image-load telemetry (Sysmon EID 7, DeviceImageLoadEvents) for unsigned modules loaded from user-writable paths.
- DLL search-order hijacking is covered under T1574 when that batch is done.
