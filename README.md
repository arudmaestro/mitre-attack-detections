# MITRE ATT&CK Detection Library

Community detection content for every MITRE ATT&CK technique and sub-technique, written for:

- **Sigma** (vendor-neutral source of truth)
- **Splunk Enterprise Security** (SPL)
- **Microsoft Sentinel** (KQL)

## Layout

```
detections/<TechniqueID>/                  # technique-level content
detections/<TechniqueID>/<SubTechID>/      # sub-technique content
    README.md     # what the technique is, how the detections work, FPs, tuning
    sigma/        # *.yml Sigma rules
    splunk/       # *.spl Splunk ES searches (raw + CIM)
    sentinel/     # *.kql Sentinel queries (MDE + SecurityEvent)
    tests/        # Atomic Red Team emulation commands and .ps1/.sh scripts
templates/        # starting points for new rules and READMEs
docs/             # conventions and contribution guidance
```

Only create folders for the platforms you actually have content for. Techniques with no reliable log-based detection have only a README marked "guidance only".

Progress is tracked in `MITRE_ATTACK_Detection_Tracker.xlsx`; see also [docs/roadmap.md](docs/roadmap.md).

## Quick start

1. Copy the files in `templates/` into `detections/<TechniqueID>/[<SubTechID>/]`.
2. Write the Sigma rule first, then port it to SPL and KQL.
3. Document tests and tuning notes in the technique `README.md`.

See [docs/conventions.md](docs/conventions.md) and [CONTRIBUTING.md](CONTRIBUTING.md).

## Continuous integration

Every push and pull request runs [CI](.github/workflows/ci.yml):

- **Rules and structure** - YAML lint, `sigma check`, ATT&CK v20.1 tags (technique matches the folder, tactics are valid), every Sigma rule has its Splunk and Sentinel queries, every ATT&CK technique has a README, detections have tests, README links resolve.
- **Shell tests** - `bash -n` and ShellCheck for `tests/*.sh`.
- **PowerShell tests** - parser check and PSScriptAnalyzer (errors) for `tests/*.ps1`.

CI checks consistency and syntax; it does not run queries against data. Test every rule in your own Splunk / Sentinel before enabling it.

## License

Detection rules and queries are released under the [Detection Rule License (DRL) 1.1](LICENSE). When you share or use the rules, keep the author attribution and a link to this repository.

