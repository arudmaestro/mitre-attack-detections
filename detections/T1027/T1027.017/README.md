# T1027.017 - Obfuscated Files or Information: SVG Smuggling

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/017/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may smuggle data and files past content filters by hiding malicious payloads inside of seemingly benign SVG files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Browser Opening a Local SVG File from Mail or Download Folders | [sigma](sigma/proc_creation_win_browser_opens_local_svg.yml) | [raw](splunk/proc_creation_win_browser_opens_local_svg.spl), [CIM](splunk/proc_creation_win_browser_opens_local_svg_cim.spl) | [MDE](sentinel/proc_creation_win_browser_opens_local_svg.kql), [SecurityEvent](sentinel/proc_creation_win_browser_opens_local_svg_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users opening legitimate SVG images received by email

## Limitations
SVG files opened inside webmail or the new Outlook in the browser do not create a new browser process; email gateway inspection of SVG attachments (embedded JavaScript, Base64 blobs) covers that path.

## Testing
See [tests/](tests/).
