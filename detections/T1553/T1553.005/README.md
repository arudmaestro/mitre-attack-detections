# T1553.005 - Subvert Trust Controls: Mark-of-the-Web Bypass

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1553/005/
- **Platforms:** Windows

## Summary
Adversaries may abuse specific file formats to subvert Mark-of-the-Web (MOTW) controls.

## Status: guidance only
Mark-of-the-Web is lost when files are delivered inside ISO, VHD or some archive formats; there is no process event for the missing mark.

## How to detect it
- EDR file events for ISO/IMG/VHD files mounted from Downloads or mail attachments, and executables started from mounted drives.
- Install Windows updates that propagate MOTW, block ISO/VHD mounting for normal users, and block these attachment types at the mail gateway.
