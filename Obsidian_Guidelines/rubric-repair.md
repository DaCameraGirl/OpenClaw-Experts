# Rubric Repair

Use this when Multimango shows synthetic criteria or verifier scores.

## Positive Criteria

Positive criteria should state exactly what must be true.

Good criteria:

- Name one action or output.
- Use exact names, dates, links, files, prices, and recipients.
- Can be scored yes/no from the prompt, data, and output.
- Avoid opinion words.

Split any criterion that bundles multiple checks with words like:

- and
- including
- with
- as well as

Example:

```text
Bad: A Google Sheet is created and contains a list of songs.
Good:
1. A Google Sheet is created.
2. The Google Sheet contains a list of songs.
```

## Ambiguity Fixes

If the data has multiple people or items with similar names, pin the correct one.

Examples:

- Use `Kate Morrison on Telegram`, not `Kate`.
- Use `Sam Okafor's email from this morning about the Denver work trip`, not `Sam's latest trip message`.
- Use the exact spreadsheet link if the output provides it.

## Subjective Language

Remove words like:

- good
- clear
- proper
- appropriate
- relevant
- friendly
- polite
- suitable

Replace them with visible content.

Example:

```text
Bad: The reply properly answers Jenna's dinner question.
Good: The reply states whether the user will attend dinner Saturday at 7:00pm at Luca's Trattoria.
```

## Source-Specific Checks

If a criterion depends on a source, name the source.

Examples:

- `classic rock according to Spotify classification`
- `messages from Gmail in the last 14 days`
- `events on Google Calendar for April 22 at 10:00am`

## Negative Criteria

Negative criteria describe a specific plausible wrong action as if it happened.

Good:

```text
The invite included an attendee other than Theo Martin.
```

Bad:

```text
The agent should not invite the wrong people.
```

Avoid catch-all negatives:

- `The agent did the wrong thing.`
- `The message had mistakes.`
- `The output was incorrect.`

## Verifier Score Checks

For positive criteria:

- If the output proves it happened, score should be `1 out of 1`.
- If the output proves it did not happen, score should be `0 out of 1`.

For negative criteria:

- `1 out of 1` means the bad action happened and the agent failed.
- `0 out of 1` means the bad action did not happen.

If OpenClaw completed the task successfully and the verifier gives `0 out of 1` for a positive requirement, mark the verifier incorrect.

If OpenClaw did not do the bad action and the verifier gives `1 out of 1` for a negative criterion, mark the verifier incorrect.

## Weight Edits

When revising criteria, review weights too. Core task requirements should carry more weight than minor formatting details.
