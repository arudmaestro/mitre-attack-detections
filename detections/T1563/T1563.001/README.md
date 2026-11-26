# T1563.001 - Remote Service Session Hijacking: SSH Hijacking

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1563/001/
- **Platforms:** Linux, macOS

## Summary
Adversaries may hijack a legitimate user's SSH session to move laterally within an environment.

## Status: guidance only
SSH session hijacking reuses an existing agent socket (SSH_AUTH_SOCK) or ControlMaster connection; the environment variable is not part of the command line.

## How to detect it
- auditd: processes of one user (often root) opening another user's agent socket in /tmp/ssh-*/agent.* ; disable agent forwarding to untrusted servers (ForwardAgent no).
- SSH logs on target servers: logins with keys from hosts where that user has no session.
