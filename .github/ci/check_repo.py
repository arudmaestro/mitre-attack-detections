#!/usr/bin/env python3
"""Repository checks run by CI.

Usage: check_repo.py <enterprise-attack.json> <repo_root> [<sigma-cli>]

Checks:
  1. Every Sigma file parses, has the required fields, a unique id and a unique file name.
  2. ATT&CK tags: the technique tag matches the folder, the technique exists in the ATT&CK data
     (not revoked or deprecated), and every tactic tag is a tactic of that technique.
  3. Every Sigma rule has its Splunk and Sentinel queries; no query exists without a Sigma rule.
  4. Every folder with detections has tests (README.md and at least one .ps1 / .sh script or .md procedure).
  5. Every ATT&CK Enterprise technique and sub-technique has a folder with a README.md.
  6. Relative links in README files point to files that exist.
  7. sigma check (pySigma) reports no errors (issues about ATT&CK tags are skipped: pySigma's
     bundled ATT&CK data is older than the release this project uses, which check 2 covers).
"""
import glob
import json
import os
import re
import subprocess
import sys

import yaml

ATTACK, ROOT = sys.argv[1], sys.argv[2]
SIGMA = sys.argv[3] if len(sys.argv) > 3 else None
DET = os.path.join(ROOT, "detections")
problems = []


def fail(where, msg):
    problems.append(f"{os.path.relpath(where, ROOT) if os.path.isabs(where) else where}: {msg}")


# ------------------------------------------------------------------ ATT&CK data
data = json.load(open(ATTACK))
TECH = {}
for o in data["objects"]:
    if o["type"] != "attack-pattern" or o.get("revoked") or o.get("x_mitre_deprecated"):
        continue
    for r in o.get("external_references", []):
        if r.get("source_name") == "mitre-attack":
            TECH[r["external_id"]] = {p["phase_name"] for p in o.get("kill_chain_phases", [])}


def folder_of(tid):
    return os.path.join(DET, tid) if "." not in tid else os.path.join(DET, tid.split(".")[0], tid)


# ------------------------------------------------------------------ 1-3: Sigma rules and queries
REQUIRED = ["title", "id", "status", "description", "author", "date", "tags", "level"]
ids, names = {}, {}
rules = sorted(glob.glob(f"{DET}/**/sigma/*.yml", recursive=True))
for path in rules:
    base = os.path.basename(path)[:-4]
    d = os.path.dirname(os.path.dirname(path))
    folder_id = os.path.basename(d)
    try:
        docs = [x for x in yaml.safe_load_all(open(path)) if x]
    except yaml.YAMLError as e:
        fail(path, f"YAML error: {e}")
        continue
    if not docs or not any("detection" in x for x in docs):
        fail(path, "no document with a detection section")
        continue
    if base in names:
        fail(path, f"file name also used by {names[base]}")
    names[base] = os.path.relpath(path, ROOT)
    for doc in docs:
        for key in REQUIRED:
            if key not in doc:
                fail(path, f"missing '{key}'")
        if "detection" in doc and "logsource" not in doc:
            fail(path, "detection document without logsource")
        rid = str(doc.get("id", ""))
        if not re.fullmatch(r"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", rid):
            fail(path, f"id is not a UUID: '{rid}'")
        elif rid in ids:
            fail(path, f"id {rid} also used by {ids[rid]}")
        else:
            ids[rid] = os.path.relpath(path, ROOT)
        tags = doc.get("tags", []) or []
        tids = [t.split(".", 1)[1].upper() for t in tags if re.match(r"attack\.t\d{4}", t)]
        tactics = [t.split(".", 1)[1] for t in tags if t.startswith("attack.") and not re.match(r"attack\.t\d{4}", t)]
        if tids != [folder_id]:
            fail(path, f"technique tags {tids} do not match folder {folder_id}")
        for tid in tids:
            if tid not in TECH:
                fail(path, f"{tid} is not a current ATT&CK technique")
                continue
            if not tactics:
                fail(path, "no tactic tag")
            for tac in tactics:
                if tac not in TECH[tid]:
                    fail(path, f"tactic '{tac}' is not a tactic of {tid} (valid: {sorted(TECH[tid])})")
    rule = next(x for x in docs if "detection" in x)
    ls = rule.get("logsource", {})
    expected = [f"splunk/{base}.spl", f"sentinel/{base}.kql"]
    if ls.get("product") == "windows" and ls.get("category") == "process_creation":
        expected.append(f"splunk/{base}_cim.spl")
    for e in expected:
        if not os.path.exists(os.path.join(d, e)):
            fail(path, f"missing {e}")

for q in glob.glob(f"{DET}/**/splunk/*.spl", recursive=True) + glob.glob(f"{DET}/**/sentinel/*.kql", recursive=True):
    base = re.sub(r"(_cim|_securityevent)?\.(spl|kql)$", "", os.path.basename(q))
    if not os.path.exists(os.path.join(os.path.dirname(os.path.dirname(q)), "sigma", base + ".yml")):
        fail(q, "query without a matching Sigma rule")

# ------------------------------------------------------------------ 4-5: folders, READMEs, tests
for tid in sorted(TECH):
    if not os.path.exists(os.path.join(folder_of(tid), "README.md")):
        fail(f"detections/{tid}", "ATT&CK technique has no folder README.md")

for sig_dir in sorted({os.path.dirname(p) for p in rules}):
    d = os.path.dirname(sig_dir)
    tests = os.path.join(d, "tests")
    scripts = [f for f in glob.glob(f"{tests}/*")
               if f.endswith((".ps1", ".sh")) or (f.endswith(".md") and not f.endswith("README.md"))]
    if not os.path.exists(os.path.join(tests, "README.md")) or not scripts:
        fail(d, "detections without tests/README.md and at least one test (.ps1, .sh or a written .md procedure)")

# ------------------------------------------------------------------ 6: README links
LINK = re.compile(r"\]\((?!https?://|#|mailto:)([^)\s]+)\)")
for md in glob.glob(f"{ROOT}/**/*.md", recursive=True):
    if "/.git/" in md:
        continue
    for target in LINK.findall(open(md, encoding="utf-8").read()):
        target = target.split("#")[0]
        if target and not os.path.exists(os.path.normpath(os.path.join(os.path.dirname(md), target))):
            fail(md, f"broken link: {target}")

# ------------------------------------------------------------------ 7: sigma check
if SIGMA:
    r = subprocess.run([SIGMA, "check", DET], capture_output=True, text=True)
    for line in r.stdout.splitlines():
        if line.startswith("issue=") and "InvalidATTACKTagIssue" not in line:
            fail("sigma check", line[:300])
    m = re.search(r"Found (\d+) errors, (\d+) condition errors", r.stdout)
    if not m:
        fail("sigma check", "did not run: " + ((r.stderr or r.stdout).strip().splitlines() or ["?"])[-1][:300])
    elif m.group(1) != "0" or m.group(2) != "0":
        fail("sigma check", m.group(0))

# ------------------------------------------------------------------ report
print(f"Sigma rules: {len(rules)}  ATT&CK techniques: {len(TECH)}  problems: {len(problems)}")
for p in problems:
    print(f"  - {p}")
sys.exit(1 if problems else 0)
