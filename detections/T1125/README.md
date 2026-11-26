# T1125 - Video Capture

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1125/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary can leverage a computer's peripheral devices (e.g., integrated cameras or webcams) or applications (e.g., video call services) to capture video recordings for the purpose of gathering information.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Webcam Capture with ffmpeg on Windows | [sigma](sigma/proc_creation_win_ffmpeg_webcam_capture.yml) | [raw](splunk/proc_creation_win_ffmpeg_webcam_capture.spl), [CIM](splunk/proc_creation_win_ffmpeg_webcam_capture_cim.spl) | [MDE](sentinel/proc_creation_win_ffmpeg_webcam_capture.kql), [SecurityEvent](sentinel/proc_creation_win_ffmpeg_webcam_capture_securityevent.kql) | medium | experimental |
| Video Device Accessed from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_video_device_capture.yml) | [CIM](splunk/proc_creation_lnx_video_device_capture.spl) | [MDE](sentinel/proc_creation_lnx_video_device_capture.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Users or developers recording video with ffmpeg
- Users testing webcams or recording video

## Limitations
Malware usually captures video through APIs (DirectShow, Media Foundation, AVFoundation) without ffmpeg; EDR and camera-in-use telemetry cover those.

## Testing
See [tests/](tests/).
