# T1048.002 - Exfiltration Over Alternative Protocol: Exfiltration Over Asymmetric Encrypted Non-C2 Protocol

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1048/002/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may steal data by exfiltrating it over an asymmetrically encrypted network protocol other than that of the existing command and control channel.

## Status: guidance only
Asymmetric-encrypted protocols (HTTPS, SFTP, SCP) are normal business traffic; only context separates exfiltration.

## How to detect it
- Proxy/NDR: large uploads to new or personal cloud destinations; SCP/SFTP to external hosts.
- Endpoint: archive creation followed by upload tools (rclone, scp, curl -T) - see T1567 when covered.
