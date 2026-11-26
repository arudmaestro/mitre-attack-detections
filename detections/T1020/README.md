# T1020 - Automated Exfiltration

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1020/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may exfiltrate data, such as sensitive documents, through the use of automated processing after being gathered during Collection.

## Status: guidance only
Automated exfiltration is identified by volume and pattern of outbound transfers rather than one event.

See T1020.001 for cloud traffic mirroring.

## How to detect it
- Proxy/firewall/NDR: large or steady outbound transfers to new destinations, scheduled at regular intervals.
- Endpoint: scheduled tasks or scripts that archive and upload data (rclone, curl -T, scp).
