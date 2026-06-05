# AGENTS.md — OpenClaw-Experts

## What this is

Static browser-only SPA (HTML + CSS + JS, zero deps, no build/server).
A task-generation and review workspace for **OpenClaw RL Guidelines** — not Selection Improvement Expert rules.

## Commands

```powershell
# Serve locally (recommended — avoids file:// cache issues)
python -m http.server 8000
```

```powershell
# Or use the launcher
.\Start-Local-App.ps1
```

Extract selectable text from the private OpenClaw PDF (output goes to gitignored `data/`):

```powershell
New-Item -ItemType Directory -Path data -Force
node tools/extract-pdf-text.mjs "..\..\guidelines\OpenClaw RL – Guidelines.pdf" > data\openclaw-rl.txt
```

No package install, no test runner — open `index.html` or serve over localhost.

## Key files

| Path | Role |
|---|---|
| `index.html` | Entry point |
| `app.js` | All app logic |
| `styles.css` | All styles |
| `openclaw-rules.json` | Bundled OpenClaw guideline rules (source: RL Guidelines) |
| `data/openclaw-rl-full.txt` | Gitignored full extracted RL Guidelines text, loaded at runtime |
| `data/openclaw-reviewer-full.txt` | Gitignored full extracted Reviewer Guidelines text, loaded at runtime |

## Storage

Browser `localStorage` key: `openclaw-experts-v2`. Data stays local-only.
Full extracted guideline text lives in gitignored `data/` and should not be committed.

## Guideline source of truth

All quality gates, checklist items, and bundled library content derive from:

- `guidelines/OpenClaw RL – Guidelines.pdf` (primary)
- `guidelines/OpenClawReviewerGuidelines.pdf` (reviewer superset)

Do not port Selection Improvement Expert gates or TBench form fields into this app.

## Architecture

- `APP_VERSION` in `app.js` — bump on meaningful changes
- `STARTERS` in `app.js` — scenario recipes used to generate prompt/rubric packages
- `runQualityGates(draft)` — live validation against OpenClaw rules
- Views: Library, Task Builder, Rubric Lab, Quality Gates, Workflow, Templates, Runner, Answer Helper
