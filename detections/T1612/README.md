# T1612 - Build Image on Host

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1612/
- **Platforms:** Containers

## Summary
Adversaries may build a container image directly on a host to bypass defenses that monitor for the retrieval of malicious images from a public registry.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Container Image Built on a Host | [sigma](sigma/proc_creation_lnx_container_image_build.yml) | [CIM](splunk/proc_creation_lnx_container_image_build.spl) | [MDE](sentinel/proc_creation_lnx_container_image_build.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Developer workstations and CI build agents (scope the rule to production servers)

## Limitations
Builds through the Docker API (remote daemon, exposed port 2375) leave no command on the host where the image is built. Image builds on production hosts should not happen; admission control that allows only signed images from your registry blocks their use.

## Testing
See [tests/](tests/).
