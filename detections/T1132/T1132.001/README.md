# T1132.001 - Data Encoding: Standard Encoding

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1132/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may encode data with a standard data encoding system to make the content of command and control traffic more difficult to detect.

## Status: guidance only
Standard encodings (Base64, URL encoding) inside C2 traffic are only visible with payload inspection.

## How to detect it
- Proxy/NDR: Base64-like data in URLs, cookies or headers of periodic requests from non-browser processes.
