# Troubleshooting Notes

Sanitized notes from project Slack and onboarding. Use these as practical guardrails, but always follow the current Multimango guidance panel and official project instructions first.

## Waiting For Access

- After signing into Multimango with the assigned `@obsidian.handshakecommunity.ai` credential, it can take time before `Claw Onboarding` and `Claw Annotate` appear.
- If Multimango says `Unapproved Annotator Status`, first confirm you signed in with the Project Obsidian `@obsidian.handshakecommunity.ai` credential, not a personal email or credential from another project.
- If the correct credential is being used and onboarding still does not appear, this may be a Multimango-side access issue. Watch Slack/project updates rather than repeatedly changing accounts.
- If HAI is down, pause and wait for confirmation in Slack before assuming your account is broken.

## Multimango Grading Behavior

- Multimango grading can be stricter than expected.
- A task may stay at `0%` until several criteria are entered and saved.
- Saving criteria one by one can cause the grade to update after enough rubric information exists.
- Entering all criteria first, then correcting score levels/fields, can make the process faster for some people.
- If the score remains low, check whether the issue is rubric quality, prompt quality, or OpenClaw's actual task outcome. The visible percentages can help show what is failing.
- If a task depends on vague web research or subjective source selection, it may be harder to rubric cleanly than a straightforward Docs, Sheets, Gmail, or Calendar task.

## Rubric Recovery Tactics

Try these before abandoning a task:

- Re-run or re-generate the rubric in HAI if the generated rubric is unusable.
- Save every criterion before assuming grading is broken.
- Split bundled criteria into one check per criterion.
- Remove criteria that check things the prompt/output cannot verify.
- Edit the task goal if it includes unsupported details or source claims that make the rubric impossible.
- Delete criteria that are impossible, duplicate, or not grounded in the prompt/output.
- Ask OpenClaw a follow-up to list the steps it took if the output is hard to verify.

## When To Skip Or Report

- Try `Ctrl+R` refresh if Multimango feedback or grading does not appear.
- Test whether the issue happens on another annotation/task.
- If the issue happens only on one task, skip that task and move on.
- Do not submit the HAI worksheet without Multimango feedback if the flow requires feedback.
- If the same grading or feedback issue happens across multiple tasks, submit the MM bug report/escalation workflow.
- For broken verifiers, spinning VM, 503 errors, or repeated annotation failures, use the MM Downtime or Bug Report workflow in Slack.

## Recommended Tool List Issues

- The recommended tool list may not show for some users.
- First check the `Claw Onboarding` area and the current Multimango task guidance.
- If no suggested tools appear, ask in the official Obsidian help thread or office hours before relying on an old or copied list.
- If staff provides a temporary list, use it only as current-session guidance and still follow the actual Multimango/HAI task flow.

## Tool/Prompt Selection Notes

- Straightforward tasks using Gmail, Google Docs, Google Sheets, Google Calendar, or Drive tend to be easier to verify and rubric.
- Web-only research tasks can be harder because sources, ranking, and relevance may be subjective.
- Prefer prompts with a visible state change: created sheet, sent email, created document, calendar event, updated row, or shared link.
- Avoid tasks where the agent must infer too much, such as "best," "good," "latest," or "relevant," unless the prompt defines the selection rule.

## Current Low-Coverage Tool Ideas From Slack

These were mentioned as services needing more annotation coverage. Treat this as a note, not a substitute for the live Multimango recommended tool list.

- Semantic Scholar: search academic papers, citations, or research topics.
- Doctors Without Borders / MSF: learn about missions or find ways to donate.
- BeerAdvocate: search beer reviews, breweries, or beer recommendations.
- Embark: explore dog DNA testing or breed information.
- Tessie: check Tesla vehicle status, battery, or climate controls if connected.
- Zillow: search homes, property values, or neighborhoods.
- Kanetix: compare insurance quotes.
- ClickUp: manage tasks, projects, or docs.
- Airbnb: search listings, availability, or stays.
- DeleteMe: check data broker removals or privacy tasks.

## Office Hours

- Use office hours for access issues, ambiguous bugs, and workflow questions.
- If a reviewer says to pause task work and report in an Obsidian help thread, do that rather than forcing submissions.

## Old OpenClaw Folder Check

Local folders checked:

- `C:\Users\enter\OneDrive\Desktop\OpenClaw`
- `C:\Users\enter\OneDrive\Desktop\OpenClawEngine`
- `C:\Users\enter\OneDrive\Desktop\OpenClawSoul`

`OpenClaw` and `OpenClawEngine` appear to contain older OpenClaw reviewer/study materials, guideline PDFs, screenshots, and local training apps.

`OpenClawSoul` contains reusable personal setup drafts:

- `USER.md`
- `IDENTITY.md`
- `SOUL.md`
- `connect-prompts.txt`

Do not blindly merge all three folders. Keep old reviewer/study material separate from current Project Obsidian setup notes. Reuse `OpenClawSoul` content only after reviewing and updating stale references.

If reusing old setup material, look specifically for:

- `USER.md`
- `IDENTITY.md`
- `SOUL.md`
- connector notes
- safe prompt examples

Do not paste or upload old `.env` files, OAuth tokens, API keys, screenshots with private data, or raw personal conversations.
