# T1036.008 - Masquerading: Masquerade File Type

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/008/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may masquerade malicious payloads as legitimate files through changes to the payload's formatting, including the file’s signature, extension, icon, and contents.

## Status: guidance only
A file disguised as another type (wrong magic bytes vs extension) is only visible by inspecting the file.

## How to detect it
- Gateway/endpoint file-type checks comparing magic bytes with extension.
- File analysis at the email/web gateway and on endpoints (YARA, sandboxing, static analysis).
