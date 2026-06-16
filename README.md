# Project Obsidian Rubric Builder

Static browser-only Project Obsidian rubric workspace: paste a selected OpenClaw conversation, draft the Step 2 Goal, build criteria in the Multimango field order, and copy/download paste-ready rubric text.

This is the OpenClaw counterpart to `selection-improvement-experts`, but it does not import Selection Improvement or TBench fields. Every generated section maps to the OpenClaw RL Guidelines.

## What It Does

| Workspace | Purpose |
| --- | --- |
| Library | Search and edit bundled OpenClaw rules plus local reviewer notes |
| Task Builder | Paste the selected conversation and write the Step 2 Goal |
| Rubric Lab | Edit Project Obsidian criteria with category, importance, optional failure fields, and 0/1/2 scoring |
| Quality Gates | Check required rubric fields, atomicity, safety coverage, and paste hygiene |
| Workflow | Track the six-step OpenClaw path from idea through rubric to an upload-ready package |
| Templates | Generate MEMORY.md, rubric JSON, verifier stub, safety annotation, and upload package templates |
| Runner | Track package status, prompt status, and upload readiness |
| Answer Helper | Classify a guideline question by intent and return a synthesized OpenClaw answer plus supporting evidence |

## Quick Start

```powershell
cd "C:\Users\angel\OneDrive\Desktop\OpenClaw\OpenClaw-Experts"
python -m http.server 8000
```

Then open:

```text
http://localhost:8000
```

No build step, package install, or backend is required.

## Desktop Launcher (crab claw 🦀)

For a one-click launch with a crab-claw icon on your desktop:

1. Run the shortcut installer once — right-click `Create-Desktop-Shortcut.ps1` and choose **Run with PowerShell**.
2. A **OpenClaw Experts** shortcut with the crab-claw icon appears on your Desktop.
3. Double-click it. The launcher (`OpenClaw-Experts-Launcher.ps1`) starts a local server on port 8010 and opens the app in your browser automatically.

| File | Role |
| --- | --- |
| `openclaw-claw.ico` | Crab-claw desktop icon (16–256px) |
| `Create-Desktop-Shortcut.ps1` | Creates the Desktop shortcut (run once) |
| `OpenClaw-Experts-Launcher.ps1` | Starts the local server and opens the app |

No manual `python -m http.server` step is needed when using the shortcut.

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
..\OpenClaw RL – Guidelines.pdf
..\OpenClawReviewerGuidelines.pdf
```

Because `data/` is gitignored, those full guideline texts stay local.
