# Roadmap

Goal: cover every ATT&CK Enterprise technique and sub-technique (ATT&CK v20.1: 227 techniques, 479 sub-techniques).

Work follows the order of `MITRE_ATTACK_Detection_Tracker.xlsx` (sorted by technique ID), in batches of about 50 rows. Every technique gets either detections (Sigma, Splunk ES, Sentinel) or a documented "guidance only" README when no reliable log-based rule exists.

| Batch | Tracker rows | Range | Status |
|-------|--------------|-------|--------|
| 0 | - | T1047, T1053.005, T1059.001-.007 (pilot) | Done |
| 1 | 1-50 | T1001 - T1027.011 | Done: 32 with detections, 18 guidance only |
| 2 | 51-100 | T1027.012 - T1055.002 | Done: 25 with detections, 23 guidance only (T1047, T1053.005 from pilot) |
| 3 | 101-150 | T1055.003 - T1071.005 | Done: 16 with detections, 27 guidance only (T1059.001-.007 from pilot) |
| 4 | 151-200 | T1072 - T1114.001 | Done: 19 with detections, 31 guidance only |
| 5 | 201-250 | T1114.002 - T1200 | Done: 26 with detections, 24 guidance only |
| 6 | 251-300 | T1201 - T1222.001 | Done: 29 with detections, 21 guidance only (first registry rule: T1204.004) |
| 7 | 301-350 | T1222.002 - T1531 | Done: 22 with detections, 28 guidance only |
| 8 | 351-400 | T1534 - T1547.014 | Done: 32 with detections, 18 guidance only (mostly registry persistence rules) |
| 9 | 401-450 | T1547.015 - T1557.002 | Done: 34 with detections, 16 guidance only (credential access, UAC bypass, trust controls); fixed renamed-binary tests from batches 6-8 |
| 10 | 451-500 | T1557.003 - T1567.003 | Done: 25 with detections, 25 guidance only (Kerberos 4768/4769 rules, hiding artifacts, archiving, wipers, exfiltration tools) |
| 11 | 501-550 | T1567.004 - T1584.005 | Done: 16 with detections, 34 guidance only (execution flow hijacking, tunneling, service execution; T1583/T1584 are resource development) |
| 12 | 551-600 | T1584.006 - T1594 | Done: 0 with detections, 50 guidance only (all Resource Development / Reconnaissance) |
| 13 | 601-650 | T1595 - T1620 | Done: 11 with detections, 39 guidance only (containers, Golden SAML, discovery, reflective loading; reconnaissance and network devices are guidance) |
| 14 | 651-706 | T1621 - T1700 | Done: 24 with detections, 32 guidance only (defense impairment: logging, security tools, firewalls, safe mode, downgrades; AI techniques are guidance) |

**Status (2026-11-25):** first pass complete - all 706 rows covered: 320 with detections (457 Sigma rules, 1405 Splunk/Sentinel queries) and 386 guidance only.

Next steps: run every query against the tests in a lab Splunk and Sentinel, then move rules from `experimental` to `test`; add data sources that many guidance-only READMEs ask for (identity-provider, mail, web/WAF, Kubernetes audit, ESXi, PowerShell 4104, Sysmon EID 7/15); re-review against new ATT&CK releases.

The tracker is the source of truth for per-technique status.
