# T1123 - Audio Capture

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1123/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary can leverage a computer's peripheral devices (e.g., microphones and webcams) or applications (e.g., voice and video call services) to capture audio recordings for the purpose of listening into sensitive conversations to gather information.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Sound Recorder Writing Audio to a File | [sigma](sigma/proc_creation_win_sound_recorder_to_file.yml) | [raw](splunk/proc_creation_win_sound_recorder_to_file.spl), [CIM](splunk/proc_creation_win_sound_recorder_to_file_cim.spl) | [MDE](sentinel/proc_creation_win_sound_recorder_to_file.kql), [SecurityEvent](sentinel/proc_creation_win_sound_recorder_to_file_securityevent.kql) | medium | experimental |
| Audio Recording Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_audio_recording.yml) | [CIM](splunk/proc_creation_lnx_audio_recording.spl) | [MDE](sentinel/proc_creation_lnx_audio_recording.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Rare: scripted legitimate recordings
- Users recording audio, conferencing troubleshooting

## Limitations
Modern Windows apps and malware record through audio APIs without a helper process; EDR and the Windows privacy 'microphone in use' telemetry cover those. On macOS, TCC microphone permission grants are a useful signal.

## Testing
See [tests/](tests/).
