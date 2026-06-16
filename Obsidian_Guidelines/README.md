# Project Obsidian Ops

Private/local working repo for OpenClaw tasking notes, prompt construction, rubric repair, and task tracking.

Do not store credentials, screenshots with private data, raw connected-account exports, personal transcripts, or secrets here.

## Start Here

For onboarding only, use the Multimango `Claw Onboarding` task and do not start a HAI timer.

For real tasking:

1. Open HAI and claim a task.
2. Start the HAI timer.
3. Open Multimango.
4. Open the OpenClaw VM from Multimango.
5. Pick the recommended tool/topic row.
6. Write a specific prompt that uses the required tool and creates a state change when possible.
7. Let OpenClaw work, then follow up at least once.
8. Select the correct OpenClaw message range in Multimango.
9. Paste the exact prompt text into HAI.
10. Repair synthetic rubrics before submitting.
11. Review verifier scores and correct wrong verifier judgments.
12. Submit in Multimango, then submit in HAI.

## Setup Gate

Before paid tasking, confirm:

- Multimango account and onboarding are complete.
- HAI access works and task timer is available.
- OpenClaw VM opens successfully.
- OpenClaw memory files are filled out: `USER.md`, `IDENTITY.md`, and `SOUL.md`.
- Telegram is connected if required by onboarding.
- Google Workspace is connected.
- At least one additional required/permitted tool is connected.
- Each connected tool has been tested with a simple safe action or read-only check.

## Fast Quality Rules

- Use exact names, dates, amounts, file names, folders, and recipients.
- Use two or more tools when possible.
- Make the end state visible: send, create, update, upload, schedule, or share something.
- Avoid vague prompts such as "make this better" or "find a good time" unless the prompt defines the rule for "good."
- For messages and email, verify recipient, platform, message content, and whether it is a new message or reply.
- If a screen explicitly says LLM-authored text is disallowed, do not submit text written by an LLM. Use this repo for structure and checks, then write the final answer yourself.

## GitHub Repo Workflow Rule

When working in one of Angela's GitHub-backed repos, treat the work like real developer work:

- Check `git status` before editing.
- Preserve unrelated user changes.
- Keep edits scoped to the request.
- Run relevant checks or previews when possible.
- Commit completed intentional changes with a clear message.
- Push when Angela asks to publish, share, deploy, or put the work on GitHub.
- Provide concise PR/release notes or a change summary when the work is meant to be reviewed.
- Call out anything not verified.

## Files

- `setup-checklist.md` - setup and task-start checklist.
- `prompt-patterns.md` - reusable prompt shapes and tool combinations.
- `rubric-repair.md` - rubric criteria, negative criteria, and verifier scoring rules.
- `troubleshooting-notes.md` - access, Multimango grading, bug-report, and Slack issue notes.
- `openclaw-memory/` - safe templates for OpenClaw memory files and connector prompts.
- `task-log.md` - sanitized task tracking.
- `obsidian-openclaw-guidelines.md` - master notes from onboarding and assessment.
