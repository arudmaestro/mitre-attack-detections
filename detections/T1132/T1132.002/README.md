# T1132.002 - Data Encoding: Non-Standard Encoding

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1132/002/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may encode data with a non-standard data encoding system to make the content of command and control traffic more difficult to detect.

## Status: guidance only
Custom encodings in C2 traffic require protocol-level analysis.

## How to detect it
- NDR: high-entropy or unrecognised payloads in otherwise standard protocols.
