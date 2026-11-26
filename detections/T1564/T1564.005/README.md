# T1564.005 - Hide Artifacts: Hidden File System

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/005/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use a hidden file system to conceal malicious activity from users and security tools.

## Status: guidance only
Hidden file systems (raw partitions, encrypted containers, unused disk space) are created and used by the malware itself.

## How to detect it
- Disk and partition inventory (new partitions, unallocated space in use) and EDR alerts for raw disk access by unusual programs; forensic disk analysis.
