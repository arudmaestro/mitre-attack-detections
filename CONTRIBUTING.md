# Contributing

1. Pick a technique/sub-technique from https://attack.mitre.org.
2. Create `detections/Txxxx/[Txxxx.xxx/]` using the files in `templates/`.
3. Every detection must include: ATT&CK tag, data source, severity, known false positives, and at least one emulation command or script in `tests/`.
4. Sigma is the source of truth; Splunk and Sentinel queries must match its logic.
5. Follow [docs/conventions.md](docs/conventions.md).
