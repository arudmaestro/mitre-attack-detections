# T1546.018 - Event Triggered Execution: Python Startup Hooks

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/018/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may achieve persistence by leveraging Python’s startup mechanisms, including path configuration (`.pth`) files and the `sitecustomize.py` or `usercustomize.py` modules.

## Status: guidance only
Python startup hooks (.pth files with import lines, sitecustomize.py, usercustomize.py) are files written into site-packages.

## How to detect it
- File monitoring of site-packages and user site directories for new .pth files containing 'import' and for sitecustomize/usercustomize files.
- Package allowlists; review packages that install .pth files.
