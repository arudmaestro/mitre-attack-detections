# T1599.001 - Network Boundary Bridging: Network Address Translation Traversal

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1599/001/
- **Platforms:** Network Devices

## Summary
Adversaries may bridge network boundaries by modifying a network device’s Network Address Translation (NAT) configuration.

## Status: guidance only
Network device techniques run on routers, switches and firewalls; their logs (syslog, AAA, configuration archives) are not data sources of this project yet.

## How to detect it
- Configuration management: archive device configurations and alert on unapproved changes; compare OS image hashes with vendor-published values.
- AAA / TACACS+ command accounting and syslog for configuration changes, logins from unexpected sources and reloads.
- Alert on NAT rule changes on perimeter devices outside change windows.
