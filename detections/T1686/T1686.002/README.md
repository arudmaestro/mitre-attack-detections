# T1686.002 - Disable or Modify System Firewall: Network Device Firewall

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1686/002/
- **Platforms:** Network Devices

## Summary
Adversaries may disable network device-based firewall mechanisms entirely or add, delete, or modify particular rules in order to bypass controls limiting network usage.

## Status: guidance only
Network device firewall changes happen on routers and firewalls; their logs are not data sources of this project yet.

## How to detect it
- Firewall management audit logs and configuration archives: rule changes outside change windows, any-any allow rules, and disabled policies.
- AAA / TACACS+ command accounting for configuration commands.
