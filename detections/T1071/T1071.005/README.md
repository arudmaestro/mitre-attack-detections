# T1071.005 - Application Layer Protocol: Publish/Subscribe Protocols

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1071/005/
- **Platforms:** macOS, Linux, Windows, Network Devices

## Summary
Adversaries may communicate using publish/subscribe (pub/sub) application layer protocols to avoid detection/network filtering by blending in with existing traffic.

## Status: guidance only
Publish/subscribe protocols (MQTT, AMQP, XMPP, cloud pub/sub) are uncommon on endpoints but look like normal traffic in logs.

## How to detect it
- Firewall/NDR: endpoints connecting to MQTT (1883/8883), AMQP (5671/5672) or public pub/sub services.
- Endpoint network telemetry to identify the process using these protocols.
