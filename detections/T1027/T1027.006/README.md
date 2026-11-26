# T1027.006 - Obfuscated Files or Information: HTML Smuggling

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/006/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may smuggle data and files past content filters by hiding malicious payloads inside of seemingly benign HTML files.

## Status: guidance only
HTML smuggling builds the payload in the browser with JavaScript, so the download looks like a local file write by the browser.

## How to detect it
- Email/web gateway: HTML attachments containing large Base64 blobs and Blob/msSaveOrOpenBlob JavaScript.
- Endpoint file events: browsers writing ISO, IMG, VHD, ZIP or JS files to Downloads shortly after opening an HTML attachment (DeviceFileEvents, Sysmon EID 11).
