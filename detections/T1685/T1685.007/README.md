# T1685.007 - Disable or Modify Tools: Impair Autonomous Defenses

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/007/
- **Platforms:** Windows, SaaS

## Summary
Adversaries may use methods like Indirect Prompt Injection to disrupt, disable, or otherwise impair autonomous defensive capabilities such as LLM-assisted processing of malware, artifacts, or activity.

## Status: guidance only
AI and LLM techniques act on AI assistants, agents and their prompts; their logs (prompt / response audit logs, agent tool-call logs) are not data sources of this project yet.

## How to detect it
- Log prompts, retrieved content and tool calls of enterprise AI agents (e.g. Microsoft Purview audit for Copilot, your agent platform's audit log) and review them for instructions that came from documents, mails or web pages.
- Limit what agents can do: least-privilege connectors, human approval for sending data out or changing systems, and content filtering for prompt-injection patterns.
- Do not let LLM-based triage be the only control: keep deterministic detections and human review for anything an AI marks as benign.
