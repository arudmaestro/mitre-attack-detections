# T1021 - Remote Services

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/
- **Platforms:** Linux, macOS, Windows, IaaS, ESXi

## Summary
Adversaries may use Valid Accounts to log into a service that accepts remote connections, such as telnet, SSH, and VNC.

## Status: guidance only
Remote Services is a parent technique; each protocol needs its own detection.

Detections live in the sub-technique folders.

## How to detect it
- Use the sub-technique rules in this folder (RDP, SMB admin shares, DCOM, SSH, VNC, WinRM, cloud VM connections).
