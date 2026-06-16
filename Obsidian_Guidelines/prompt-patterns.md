# Prompt Patterns

Use these as structures for OpenClaw prompts. Replace names, dates, folders, tools, and recipients with the actual task context. Do not store private details in this repo.

## Prompt Anatomy

A strong task prompt usually includes:

- Tool or app to inspect.
- Exact source data.
- Date range or filter.
- Extraction rule.
- Destination tool.
- State change.
- Verification-friendly output.

Shape:

```text
Use [source tool] to find [exact records] matching [condition]. Extract [fields]. Then use [destination tool] to [create/update/send/share] [specific item]. Send me [confirmation/link/summary] when done.
```

## Two-Tool State Change Patterns

### Gmail + Google Calendar

Use Gmail to find recent messages from a named sender with a specific subject keyword. Extract the due date, location, or appointment details. Create a Google Calendar event or reminder with the extracted details.

State change: calendar event created.

### Gmail + Google Sheets

Use Gmail to search a date range for receipts, invoices, signups, or confirmations. Extract sender, date, amount, status, or link. Add rows to a named Google Sheet.

State change: sheet rows added.

### Google Calendar + Telegram

Use Google Calendar to find events matching a date, title, attendee, or missing-field condition. Send a Telegram summary to the user or a named contact.

State change: Telegram message sent.

### Google Drive + Google Docs

Use Google Drive to find a file in a named folder. Extract a specific section, title, date, or summary. Create a Google Doc with a defined title and content.

State change: document created.

### Google Forms + Gmail

Create a Google Form with specified questions and options. Send the form link through Gmail to a named recipient or group.

State change: form created and email sent.

### Eventbrite + Google Calendar

Find an event matching city, date, price, and category constraints. Check calendar availability. Add the event to Google Calendar with the ticket link and reminder.

State change: calendar event created.

### Spotify + Google Sheets

Use Spotify listening data to identify tracks matching a genre, time window, artist, or play-count rule. Add track name, artist, album, play count, and link to a Google Sheet.

State change: sheet created or updated.

## Follow-Up Prompts

Use a second interaction to make the task more complete:

- "Now make the sheet viewable by anyone with the link and send me the link."
- "Add a short summary at the top of the document."
- "Send the calendar event link to me on Telegram."
- "Double-check that the recipient is the right person before sending."
- "If any required detail is missing, ask me before taking the final action."

## Prompt Safety

Ask for confirmation before:

- Sending money.
- Deleting data.
- Public posting.
- Messaging an external recipient when the identity is ambiguous.
- Sharing private documents publicly.

## Bad Prompt Fixes

Weak:

```text
Find a good time and message my friend.
```

Better structure:

```text
Check my Google Calendar for a free 30-minute slot between 2:00pm and 5:00pm on Friday. Then send a Telegram message to [exact contact] with the first available time and ask whether that works.
```

Weak:

```text
Make a spreadsheet of my music.
```

Better structure:

```text
Use Spotify to find my top classic rock songs played in the last 14 days. Create a Google Sheet with song title, artist, album, Spotify link, and play count. Send me the sheet link on Telegram.
```
