# T1601.002 - Modify System Image: Downgrade System Image

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1601/002/
- **Platforms:** Network Devices

## Summary
Adversaries may install an older version of the operating system of a network device to weaken security.

## Status: guidance only
Network device techniques run on routers, switches and firewalls; their logs (syslog, AAA, configuration archives) are not data sources of this project yet.

## How to detect it
- Configuration management: archive device configurations and alert on unapproved changes; compare OS image hashes with vendor-published values.
- AAA / TACACS+ command accounting and syslog for configuration changes, logins from unexpected sources and reloads.
- Alert on boot variable changes and on devices running an OS version older than your approved baseline.
