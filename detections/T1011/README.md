# T1011 - Exfiltration Over Other Network Medium

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1011/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to exfiltrate data over a different network medium than the command and control channel.

## Status: guidance only
Exfiltration over another network medium (Wi-Fi, cellular, Bluetooth) bypasses the corporate network, so network logs do not see it.

See T1011.001 for the Bluetooth rule.

## How to detect it
- Endpoint telemetry: new network adapters, Wi-Fi connections to unknown SSIDs (WLAN-AutoConfig events 8001/8003).
- MDM/EDR device control for cellular modems and USB network adapters.
