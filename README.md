# OpenClaw Experts

Static browser-only OpenClaw task engine: it generates a task prompt, weighted rubric, quality-gate audit, helper templates, workflow tracker, and run checklist from OpenClaw-only rules.

This is the OpenClaw counterpart to `selection-improvement-experts`, but it does not import Selection Improvement or TBench fields. Every generated section maps to the OpenClaw RL Guidelines.

## What It Does

| Workspace | Purpose |
| --- | --- |
| Library | Search and edit bundled OpenClaw rules plus local reviewer notes |
| Task Builder | Generate the full prompt, objective, desired outcome, MEMORY.md plan, upload plan, and rubric |
| Rubric Lab | Edit generated weighted rubrics and validate atomic positive criteria |
| Quality Gates | Audit live environment, parity, Skills, MEMORY.md, prompt, rubrics, unit tests, safety, and upload readiness |
| Workflow | Track the six-step OpenClaw path from idea through rubric to an upload-ready package |
| Templates | Generate MEMORY.md, rubric JSON, verifier stub, safety annotation, and upload package templates |
| Runner | Track package status, prompt status, and upload readiness |
| Answer Helper | Classify a guideline question by intent and return a synthesized OpenClaw answer plus supporting evidence |

## Quick Start

```powershell
cd "C:\Users\enter\OneDrive\Desktop\OpenClaw\apps\OpenClaw-Experts"
python -m http.server 8000
```

Then open:

```text
http://localhost:8000
```

No build step, package install, or backend is required.

## Key Files

| Path | Role |
| --- | --- |
| `index.html` | Static UI shell |
| `app.js` | Generator, gates, rubrics, templates, storage |
| `styles.css` | Workbench styling |
| `openclaw-rules.json` | Bundled OpenClaw rule catalog |
| `data/openclaw-rl-full.txt` | Gitignored full text extracted from `OpenClaw RL - Guidelines.pdf` |
| `data/openclaw-reviewer-full.txt` | Gitignored full text extracted from `OpenClawReviewerGuidelines.pdf` |

## Privacy

- Workspace data stays in browser `localStorage` under `openclaw-experts-v2`.
- Private PDFs and extracted text stay local and out of git.
- Generated exports contain task/rubric/template work, not private guideline PDFs.

## Full Guideline Loading

The app loads these local files over localhost when available:

```text
data/openclaw-rl-full.txt
data/openclaw-reviewer-full.txt
```

They were created from:

```text
C:\Users\enter\OneDrive\Desktop\OpenClaw\guidelines\OpenClaw RL – Guidelines.pdf
C:\Users\enter\OneDrive\Desktop\OpenClaw\guidelines\OpenClawReviewerGuidelines.pdf
```

Because `data/` is gitignored, those full guideline texts stay local.
