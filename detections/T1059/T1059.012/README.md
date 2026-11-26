# T1059.012 - Command and Scripting Interpreter: Hypervisor CLI

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/012/
- **Platforms:** ESXi

## Summary
Adversaries may abuse hypervisor command line interpreters (CLIs) to execute malicious commands.

## Status: guidance only
ESXi hypervisor CLI (esxcli, vim-cmd) runs on the host and is logged in ESXi shell and hostd logs, not in endpoint telemetry.

## How to detect it
- Forward ESXi syslog (shell.log, hostd.log) to the SIEM; alert on SSH/shell enablement and esxcli/vim-cmd commands that stop VMs or change firewall/accounts.
