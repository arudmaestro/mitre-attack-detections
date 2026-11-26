# T1601.001 - Modify System Image: Patch System Image

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1601/001/
- **Platforms:** Network Devices

## Summary
Adversaries may modify the operating system of a network device to introduce new capabilities or weaken existing defenses.

## Status: guidance only
Network device techniques run on routers, switches and firewalls; their logs (syslog, AAA, configuration archives) are not data sources of this project yet.

## How to detect it
- Configuration management: archive device configurations and alert on unapproved changes; compare OS image hashes with vendor-published values.
- AAA / TACACS+ command accounting and syslog for configuration changes, logins from unexpected sources and reloads.
- Vendor image verification commands (e.g. Cisco 'verify /md5', 'show software authenticity') and runtime memory integrity checks where supported.
