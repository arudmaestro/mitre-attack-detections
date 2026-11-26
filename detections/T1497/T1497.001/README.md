# T1497.001 - Virtualization/Sandbox Evasion: System Checks

- **Tactic(s):** Stealth, Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1497/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may employ various system checks to detect and avoid virtualization and analysis environments.

## Status: guidance only
System checks (VM artifacts, hardware, processes) look like normal discovery.

## How to detect it
- Discovery detections (T1082, T1057, T1012) in short bursts from a new process; queries for VM vendor strings (VBOX, VMware, QEMU) in WMI or registry from unknown binaries.
