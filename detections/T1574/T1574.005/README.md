# T1574.005 - Hijack Execution Flow: Executable Installer File Permissions Weakness

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/005/
- **Platforms:** Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking the binaries used by an installer.

## Status: guidance only
Installer permission weaknesses are abused by replacing files that an installer writes and then runs.

## How to detect it
- File events for executables and DLLs replaced in installer temp folders during installs; run installers from protected folders.
