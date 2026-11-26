# T1555.002 - Credentials from Password Stores: Securityd Memory

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/002/
- **Platforms:** Linux, macOS

## Summary
An adversary with root access may gather credentials by reading `securityd`’s memory.

## Status: guidance only
Reading securityd memory needs root and a memory-reading tool on older macOS versions.

## How to detect it
- EDR alerts for processes reading the memory of securityd; keep macOS current (newer versions block this).
