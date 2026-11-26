# T1059.008 - Command and Scripting Interpreter: Network Device CLI

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/008/
- **Platforms:** Network Devices

## Summary
Adversaries may abuse scripting or built-in command line interpreters (CLI) on network devices to execute malicious command and payloads.

## Status: guidance only
Network device CLI abuse happens on routers, switches and firewalls, outside endpoint logs.

## How to detect it
- AAA accounting (TACACS+/RADIUS) command logs and device syslog for configuration changes.
- Alert on commands that change ACLs, add users, enable packet capture or modify firmware.
