# T1546.004 - Event Triggered Execution: Unix Shell Configuration Modification

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/004/
- **Platforms:** Linux, macOS

## Summary
Adversaries may establish persistence through executing malicious commands triggered by a user’s shell.

## Status: guidance only
Shell configuration files (.bashrc, .zshrc, /etc/profile) are usually changed with shell redirection (echo >> ~/.bashrc), which starts no process.

## How to detect it
- File monitoring: auditd -w /etc/profile -w /etc/profile.d -w /etc/bash.bashrc -p wa, plus per-user files for privileged accounts; EDR file events on macOS.
- Hunt for curl/wget, base64, nohup or reverse-shell patterns inside these files.
