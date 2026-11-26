# T1027.002 - Obfuscated Files or Information: Software Packing

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may perform software packing or virtual machine software protection to conceal their code.

## Status: guidance only
Packed binaries are identified by analysing the file (entropy, packer signatures), not by log events.

## How to detect it
- File analysis: high-entropy sections, UPX/Themida/VMProtect signatures (YARA, EDR static analysis).
- Hunting: execution of rare, high-entropy binaries from user-writable paths.
