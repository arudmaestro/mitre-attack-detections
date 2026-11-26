# T1574.008 - Hijack Execution Flow: Path Interception by Search Order Hijacking

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/008/
- **Platforms:** Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking the search order used to load other programs.

## Status: guidance only
Search order hijacking places an executable or DLL in a folder searched before the real one; it is a file write.

## How to detect it
- File events for executables written to folders early in the search order (application folders, folders early in PATH), and image-load telemetry for DLLs loaded from unexpected folders.
