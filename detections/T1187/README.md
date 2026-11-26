# T1187 - Forced Authentication

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1187/
- **Platforms:** Windows

## Summary
Adversaries may gather credential material by invoking or forcing a user to automatically provide authentication information through a mechanism in which they can intercept that information.

## Status: guidance only
Forced authentication makes a host send NTLM credentials to an attacker (e.g. via SCF/LNK files or UNC links); it shows up as outbound SMB/WebDAV.

## How to detect it
- Firewall/NDR: outbound SMB (445/139) or WebDAV to the Internet, which should be blocked.
- File servers: new .scf/.lnk/.url files on shares with remote icon paths.
