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
# Use any PDF text extractor of your choice:
# node tools/extract-pdf-text.mjs "..\OpenClaw RL – Guidelines.pdf" > data\openclaw-rl-full.txt
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

- `..\OpenClaw RL – Guidelines.pdf` (primary)
- `..\OpenClawReviewerGuidelines.pdf` (reviewer superset)

Do not port Selection Improvement Expert gates or TBench form fields into this app.

## Architecture

- `APP_VERSION` in `app.js` — bump on meaningful changes
- `STARTERS` in `app.js` — scenario recipes used to generate prompt/rubric packages
- `PIPELINE_STAGES` in `app.js` — the five ordered pipeline stages and their gating metadata
- `runQualityGates(draft)` — live validation against OpenClaw rules
- Quality gates include checks for all major guideline rules, including ST.5 (prompt-outcome alignment)
- `ANSWER_INTENTS` in `app.js` — intent-matched answers for common question categories (rubrics, safety, prompts, etc.)
- When no intent matches, the answer helper builds a dynamic answer from the loaded guideline evidence
- Three tabs: **Pipeline**, **Library**, **Answer Helper**
- The Pipeline tab is one gated workspace with five ordered stages, each unlocking the next once its output exists:
  1. **Design & Generate** — seed request + task family produce the full task draft and rubric
  2. **Build Package** — assembles paste-ready OpenClaw fields and runs every quality gate
  3. **Rubrics & Gates** — review-stack of gate report, rubric criteria, and rule coverage/audit
  4. **Verifier & Templates** — derives the verifier stub and helper files from the built package
  5. **Upload-Ready** — readiness checklist; the upload gate stays locked until gates pass
- Stage state lives in `state.draft.pipeline` (per-stage booleans) + `state.draft.stage`; `reconcilePipeline` derives completion from draft contents for migrated data
