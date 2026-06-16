# Project Obsidian / OpenClaw Guidelines

This note is a comprehensive working summary of the onboarding and strict project rules provided in chat. It is for review and compliance.

## Core Job

You send prompts from the OpenClaw Virtual Machine to an AI agent called OpenClaw. OpenClaw takes actions through connected tools and services. After the task is complete, you annotate how well OpenClaw performed inside the tasking platform, Multimango, while tracking time in the HAI platform.

The project goal is to use real everyday tasks to teach agents useful real-life skills and improve model behavior through human feedback and rubric annotations.

## What An AI Agent Is

A traditional chatbot generates text responses. It answers questions and can draft text, but it does not act on external systems.

An AI agent takes actions in external systems. It can send real messages, create files, call APIs, interact with services, and chain multiple actions together.

The key distinction: a chatbot talks; an agent acts.

## What OpenClaw Is

OpenClaw is the AI agent used for this project. It runs inside a secure browser-based virtual machine and connects to real apps such as Telegram, email, calendars, Google Workspace, and other permitted tools. It can take real actions on your behalf instead of only describing what to do.

OpenClaw uses a single long-running conversation thread so it can remember context, preferences, and previous task history over time.

You stay in control:

- Share only what you are comfortable sharing.
- Use scoped permissions.
- Connect only the services actually needed for a task.
- Require explicit human approval before irreversible actions such as sending money, deleting data, or posting publicly.

## Platforms And Tools

### HAI Platform

Use HAI to claim tasks and start the timer. Always start a new HAI task before opening Multimango. HAI generates synthetic goals and criteria that you later paste into Multimango.

One HAI claim equals one task. If you switch what you are working on, claim a new HAI task.

### Multimango

Use Multimango for annotation. It is where you select conversation ranges, paste criteria, repair rubrics, review trial results, and submit the annotation.

Read the Guidance panel carefully at every step in the Multimango annotation flow.

### OpenClaw Virtual Machine

The OpenClaw VM is the command-and-control center for OpenClaw. All prompting happens inside the OpenClaw VM.

Bookmark your OpenClaw VM URL. Your bookmarked URL may change, so check it if something seems wrong.

## Onboarding Setup

### Set Up Environment

Follow the onboarding steps in Multimango to prepare the OpenClaw environment, connect Telegram, and add services. Once the VM is ready, continue through onboarding.

### Open OpenClaw And Complete Memory Files

Select "Open OpenClaw" and set up:

- `USER.md`
- `IDENTITY.md`
- `SOUL.md`

Take at least 30 minutes to answer attentively. Explicitly describe what you want OpenClaw to do, who you are, your interests, and your context.

Use your personal email during onboarding. Do not use the `@obsidian.handshakecommunity.ai` credential for personal service connections.

### Connect Required Services

You must connect Google Workspace plus at least one of the following tools:

- Whoop
- NewsAPI / News Summary
- Wikimedia Commons
- Wikipedia
- Finnhub
- Hacker News
- Typeform
- Mailchimp
- FTC ReportFraud

Every task pairs OpenClaw with a specific recommended tool. Use the Connect Your Tools section for the full list. Do not use Composio. Connect tools directly.

### Complete Onboarding

After setup and required tool connections are complete, finish onboarding. The dashboard should show message activity, stats, cron jobs, and installed skills.

## Day-To-Day Project Expectations

- Submit at least 2 rubrics per day to stay active.
- Read the Guidance panel carefully at every Multimango step.
- Follow in-flow guidance and compliance rules.
- Use your real personal email for service connections when required, not your `@obsidian.handshakecommunity.ai` credential.
- Review and acknowledge feedback on submissions at `multimango.com/tasks/260410-claw-annotate`.

## Test Assistant Behavior

Use the Test assistant behavior panel to push the model with tricky prompts that are likely to trip it up.

Before sending a tricky prompt, select a category tag. Categories include areas such as:

- Email and Message
- Sensitive Content
- Multi-Step Workflows
- Planning & Booking

Aim to try at least one difficult prompt per day.

Once a category is selected, keep follow-up messages on the same topic. If you switch topics, click the `x` to clear the tag so unrelated messages are not mistagged.

After the task is completed:

1. Mark it as completed.
2. Complete an annotation.
3. Include the Safety & Trustworthiness category of criteria.

## Connector Health

Keep tools and connectors healthy. The Fix Connectors list should stay empty. If a connector breaks, click Fix and resolve it.

Use the pre-configured New Tools list first:

1. Open New Tools.
2. Click Show all.
3. Search for the tool you want.
4. If it is listed, use that path.
5. If it is not listed, ask OpenClaw in the VM: "Please help me setup <toolname>."

## Bugs And Outages

If there is a bug inside the OpenClaw VM, such as 502 errors, broken tools, unexpected behavior, spinning VM, 503 errors, broken verifiers, or annotation failures:

- Use the Report a Bug button in the left sidebar when available.
- For 502 errors, try relaunching OpenClaw first.
- For OpenClaw VM or Claw annotation issues, report through the MM Downtime or Bug Report workflow in the Slack bug-reporting channel.

For general workflow and technical issues, use Slack `#obsidian-help`.

Before asking for help:

- Search Slack history in `#obsidian-help`.
- For pay questions, review the Pay section and dispute form.
- Explain what you already tried. A specific report is better than saying "OpenClaw is broken."

## Privacy And Security

This project touches real conversations. That is intentional because synthetic data does not train useful agents. Because real data is involved, protections are strict.

Four guarantees:

- Strict confidentiality.
- Contextual training.
- Industry-leading security.
- You maintain control.

If your data is used for model training, the training signal is the rubric and contextual behavior. The goal is not to memorize or permanently store your conversation contents.

Security practices include encryption at rest and in transit, isolation from other systems, and a sandboxed OpenClaw VM.

### What Not To Connect

Never connect social media accounts. These are out of scope and create privacy risk without task benefit:

- Twitter / X
- Instagram
- Facebook
- TikTok
- LinkedIn

WhatsApp is also unsupported and banned for prompting.

For platforms where possible, use a dedicated test account. This is recommended for:

- Discord
- Telegram
- Signal

This isolates project conversations from personal ones and makes connector setup cleaner.

### Practical Privacy Checklist

- Connect tools one at a time.
- Verify each connected tool works before moving on.
- Disconnect any tool you stop actively using.
- Treat `@obsidian.handshakecommunity.ai` credentials like work credentials.
- Report anything suspicious in `#obsidian-help`.

## Required And Banned Tools

Do not use Composio or any third-party connector service. Connect tools directly through OpenClaw only.

Every prompt must use the OpenClaw VM plus one permitted tool. Prioritize the tools Multimango recommends for your current session. The per-session list is personalized and generated by Multimango.

If Multimango shows a new tool that is not listed in the permitted list, flag it in `#obsidian-help` for review.

Using a banned tool can get you offboarded.

### How The Per-Session Tool List Works

Each time you task, Multimango shows a personalized list of tools paired with prompt subject suggestions.

What to do:

1. Pick one row.
2. Write a prompt inspired by that subject.
3. Use your own words.
4. Do not copy the suggested subject verbatim.
5. Make sure the prompt actually exercises that tool.

The Multimango format says "Browse all 59 permitted tools." The pasted table includes columns such as:

- Tool
- Suggested prompt subject

Example row text later provided:

- Suggested prompt subject: `crumbl`
- Crumbl suggested prompt subject: check this week's cookie menu or find nearby Crumbl stores.
- Tool: `coolors`
- Coolors suggested prompt subject: generate color palettes or explore color schemes on Coolors.
- Tool: `edx` / `edx-dl`
- edX suggested prompt subject: search courses, explore programs, or check certifications on edX.
- Tool: `olaplex`
- Olaplex suggested prompt subject: browse hair care products or find routines at Olaplex.
- Tool: `insurify`
- Insurify suggested prompt subject: compare car insurance rates or get quotes on Insurify.
- Tool: `ollie`
- Ollie suggested prompt subject: manage fresh dog food subscriptions or customize meal plans on Ollie.
- Tool: `kanetix`
- Kanetix suggested prompt subject: compare insurance quotes on Kanetix.
- Tool: `breakout-games`
- Breakout Games suggested prompt subject: find escape rooms or book sessions at Breakout Games.
- Tool: `idealist`
- Idealist suggested prompt subject: search nonprofit jobs, internships, or volunteer opportunities on Idealist.
- Tool: `plooto`
- Plooto suggested prompt subject: manage business payments or automate invoicing on Plooto.
- Tool: `withings`
- Withings suggested prompt subject: check health metrics like weight, blood pressure, or sleep from Withings.
- Tool: `inmyarea`
- InMyArea suggested prompt subject: compare internet, cable, or utility providers in your area on InMyArea.
- Tool: `vivino`
- Vivino suggested prompt subject: search wine ratings, scan labels, or find wines on Vivino.
- Tool: `wix` / `wix`
- Wix suggested prompt subject: build websites, manage content, or check site analytics on Wix.
- Tool: `king-arthur-baking`
- King Arthur Baking suggested prompt subject: find baking recipes or order flour and ingredients from King Arthur.
- Tool: `airbnb` / `airbnb-mcp-server`
- Airbnb suggested prompt subject: search listings, check availability, or compare stays on Airbnb.
- Tool: `charity-village`
- Charity Village suggested prompt subject: find nonprofit jobs or volunteer opportunities on Charity Village.
- Tool: `the-ordinary`
- The Ordinary suggested prompt subject: browse affordable skincare products or build routines with The Ordinary.
- Tool: `wag` / `mcp-wag`
- Wag suggested prompt subject: find dog walkers, book pet sitting, or schedule walks on Wag.
- Tool: `google-workspace`
- Google Workspace suggested prompt subject: use Gmail, Google Calendar, Google Drive, Google Forms, or Google Sheets via the Google connector.
- Tool: `calendly`
- Calendly suggested prompt subject: schedule meetings, check availability, or share booking links on Calendly.
- Tool: `eventbrite`
- Eventbrite suggested prompt subject: find events, manage registrations, or check ticket sales on Eventbrite.
- Tool: `strava`
- Strava suggested prompt subject: check activity stats, log workouts, or browse routes on Strava.
- Tool: `notion`
- Notion suggested prompt subject: search pages, manage docs, or update databases in Notion.
- Tool: `bean-box`
- Bean Box suggested prompt subject: browse coffee subscriptions or order specialty beans from Bean Box.
- Tool: `slack` / `slack-mcp`
- Slack suggested prompt subject: send messages, search channels, or manage notifications in Slack.
- Tool: `masterclass` / `masterclass-dl`
- MasterClass suggested prompt subject: explore classes or find courses taught by experts on MasterClass.
- Tool: `mac-cosmetics`
- MAC Cosmetics suggested prompt subject: browse makeup products or find shades at MAC Cosmetics.
- Tool: `myheritage`
- MyHeritage suggested prompt subject: explore family trees, DNA results, or historical records on MyHeritage.
- Tool: `race-roster`
- Race Roster suggested prompt subject: find running races, register for events, or check results on Race Roster.
- Tool: `philips-hue` / `philips-hue`
- Philips Hue suggested prompt subject: control smart lights, including turn on/off, change colors, or set scenes.
- Tool: `typeform` / `typeform-mcp-server`
- Typeform suggested prompt subject: create surveys, forms, or quizzes on Typeform.
- Tool: `pawp`
- Pawp suggested prompt subject: get pet health advice or manage vet telehealth on Pawp.
- Tool: `legalnature`
- LegalNature suggested prompt subject: create legal documents or contracts on LegalNature.
- Tool: `topgolf`
- Topgolf suggested prompt subject: check availability, book bays, or find events at Topgolf.
- Tool: `flixbus`
- FlixBus suggested prompt subject: search bus routes, compare prices, or book tickets on FlixBus.
- Tool: `cineplex`
- Cineplex suggested prompt subject: check movie showtimes or buy tickets at Cineplex.
- Tool: `udemy`
- Udemy suggested prompt subject: search courses, check ratings, or enroll in classes on Udemy.
- Tool: `uncommon-goods`
- Uncommon Goods suggested prompt subject: find unique gifts or browse handmade products on Uncommon Goods.
- Tool: `glassdoor`
- Glassdoor suggested prompt subject: search jobs, read company reviews, or check salary data on Glassdoor.
- Tool: `todoist`
- Todoist suggested prompt subject: add tasks, check today's to-do list, or organize projects in Todoist.
- Tool: `resy`
- Resy suggested prompt subject: make restaurant reservations or find trending dining spots on Resy.
- Tool: `greenhouse` / `greenhouse-meta`
- Greenhouse suggested prompt subject: manage job postings, review candidates, or track hiring on Greenhouse.
- Tool: `mailchimp`
- Mailchimp suggested prompt subject: create email campaigns, manage lists, or check analytics on Mailchimp.
- Tool: `trezor` / `trezorctl`
- Trezor suggested prompt subject: manage Trezor hardware wallets, check device status, or review firmware.
- Tool: `crunchyroll` / `striderlabs-mcp-crunchyroll`
- Crunchyroll suggested prompt subject: browse anime, check new episodes, or manage your Crunchyroll watchlist.
- Tool: `aspca-pet-health-insurance`
- ASPCA Pet Health Insurance suggested prompt subject: get pet insurance quotes, review plans, or check coverage on ASPCA Pet Health Insurance.
- Tool: `github` / `gh`
- GitHub suggested prompt subject: browse repositories, manage issues, or review pull requests on GitHub.
- Tool: `frontfundr`
- FrontFundr suggested prompt subject: explore equity crowdfunding opportunities or browse investments on FrontFundr.
- Tool: `roomsketcher`
- RoomSketcher suggested prompt subject: create floor plans, design rooms, or visualize layouts on RoomSketcher.
- Tool: `coursera` / `coursera-dl`
- Coursera suggested prompt subject: search courses, browse specializations, or check certifications on Coursera.
- Tool: `bowlero`
- Bowlero suggested prompt subject: find bowling alleys, check lane availability, or book a session at Bowlero.
- Tool: `outschool`
- Outschool suggested prompt subject: search live online classes, browse subjects, or enroll kids in courses on Outschool.
- Tool: `workable`
- Workable suggested prompt subject: post jobs, review candidates, or track hiring pipelines on Workable.
- Tool: `substack`
- Substack suggested prompt subject: browse newsletters, read recent posts, or manage subscriptions on Substack.
- Tool: `squarespace`
- Squarespace suggested prompt subject: build websites, manage pages, or check site analytics on Squarespace.
- Tool: `ziprecruiter`
- ZipRecruiter suggested prompt subject: search jobs, save listings, or apply to roles on ZipRecruiter.
- Tool: `mansur-gavriel`
- Mansur Gavriel suggested prompt subject: browse handbags, shoes, or ready-to-wear collections at Mansur Gavriel.
- Tool: `oura`
- Oura suggested prompt subject: check sleep scores, readiness, or activity metrics from an Oura ring.

### Banned Tools

Do not use these in prompts or submitted tasks:

- WhatsApp
- Facebook
- Instagram
- Messenger
- Threads
- X / Twitter
- LinkedIn
- TikTok
- Snapchat

If a suggested prompt would naturally involve a banned tool, leave it out and use only the recommended permitted tool for the subject.

## Tool Connection Rules

All tools must be connected before writing a task prompt. Connecting a tool does not count as a task prompt and is not credited.

Prompts must drive a real action using tools that are already set up. Setup actions such as authentication, QR scanning, and linking accounts are not valid task prompts.

The New Tools sidebar in the VM contains tools that auto-connect. Click Add next to tools there to install the underlying skill, MCP server, or CLI.

### New Tools Sidebar In The VM

On the left side of the OpenClaw VM there is a panel labeled "New Tools."

Tools listed there auto-connect:

- Click Add next to each needed tool.
- OpenClaw installs the underlying skill, MCP server, or CLI.
- No credentials or manual setup are required for those auto-connect tools unless OpenClaw asks during the install.
- Confirm each needed tool is wired up before starting a tasking session.

The onboarding material references a table titled "Tools currently in the New Tools sidebar (auto-connect)." The pasted text cuts off after the column header "Tool," so the actual tool rows were not included in this note yet.

Auto-connect tool row later provided:

- `yt-mcp` with YouTube.

Additional install note later provided:

- What gets installed: Ticketmaster.
- Ticketmaster installs the bundled Ticketmaster Discovery API CLI skill.
- 1Password.
- 1Password installs the ClawHub 1Password skill plus `op` CLI.
- Asana.
- Asana installs the Asana MCP server.
- ClickUp.
- ClickUp installs the ClickUp MCP server.
- Confluence.
- Confluence installs the Atlassian Confluence MCP server.
- Discord.
- Discord installs or uses the native OpenClaw Discord channel.
- DoorDash.
- DoorDash installs the Strider Labs DoorDash MCP server.
- Google Contacts.
- Google Contacts uses or installs the Google Workspace MCP server.
- Mailchimp.
- Mailchimp installs the Mailchimp MCP server from GitHub source.
- Notion.
- Notion installs the official Notion MCP server.
- Philips Hue.
- Philips Hue installs the ClawHub OpenHue skill plus Hue bridge CLI.
- Polymarket.
- Polymarket installs the ClawHub skill plus public Gamma API.
- Slack Health Repair.
- Slack Health Repair uses or installs the native OpenClaw Slack channel.
- Todoist.
- Todoist installs the official Todoist MCP server.
- Trello.
- Trello installs the Trello MCP server.
- Weather Service.
- Weather Service installs the bundled Weather Service CLI skill.
- Webflow.
- Webflow installs the official Webflow MCP server.
- Wix.
- Wix installs the official Wix MCP server with Wix CLI OAuth.
- YouTube.

If a tool you need is not in the sidebar or the permitted-tools list, flag it in `#obsidian-help` in Slack before using it.

Connector setup usually takes several back-and-forth messages with OpenClaw. Some tools require downloading an app first, such as Telegram, Signal, or Spotify.

If stuck, use Slack instead of spending hours on one connector.

## Connection Guide

Every tool connects to OpenClaw in one of five repeatable patterns. Use these patterns to set up any tool, including tools that are not covered by a specific walkthrough.

For the five longest connectors, fallback step-by-step guides live under Intensive Walkthroughs:

- Google Workspace
- Calendly
- Eventbrite
- Strava
- Notion

If you are new to a tool, start with the Prompt Generator. If you already tried and got stuck, jump to Troubleshooting.

The connection guide tabs are:

- Prompt Generator
- Connection Patterns
- Troubleshooting
- Quick Reference
- Intensive Walkthroughs

### Pattern A: Real MCP Connector

Real MCP connectors install automatically.

What to say:

Connect [tool]

What OpenClaw does:

- Installs the connector on its own.
- Usually does not need credentials.
- Some connectors may ask for account login after install.

Typical OpenClaw responses:

- "Installing airbnb-mcp-server..."
- "mcp-wag is ready."

Examples:

- Airbnb
- Wag
- Slack
- Typeform
- Philips Hue

### Pattern B: OAuth Or API Key

OAuth or API key tools require credentials.

What OpenClaw does:

- Walks you through an auth flow.
- May ask for OAuth sign-in.
- May ask for an API key.
- May ask for an integration token.
- May ask for email and password.

Typical OpenClaw response:

- OpenClaw asks for a key, token, or sign-in.

Examples:

- Google Workspace
- Calendly
- Strava
- Notion
- edX
- Wix
- Eventbrite
- Withings
- MyHeritage
- MasterClass

### Pattern C: No API, Browser-Only

Some tools do not have a public API. Ask for an alternative way to connect.

Typical OpenClaw response:

- "There's no public API available for [tool]."

What to do:

Reply:

What is an alternative way to connect?

OpenClaw should confirm browser-only mode if that is the viable route.

Examples:

- Ollie
- InMyArea
- Vivino
- Insurify
- Idealist
- Charity Village
- Breakout Games
- Kanetix
- King Arthur Baking
- Bean Box
- Race Roster
- Pawp
- LegalNature

### Pattern D: Shopify JSON Trick

Some commerce tools first look like browser-only tools, but OpenClaw may be able to use Shopify JSON product data.

Typical first OpenClaw response:

- "There's no public API available for [tool]."

What to do:

Ask for an alternative way to connect.

Expected follow-up:

- OpenClaw says something like "Shopify's JSON trick gives us full product data."

Examples:

- Olaplex
- The Ordinary
- MAC Cosmetics

### Pattern E: ClawHub Plugin Install Required

Some tools require manual plugin installation before connecting.

When this applies:

- OpenClaw does not recognize the tool.
- OpenClaw errors out.
- OpenClaw is silent.
- OpenClaw says the tool is not found.

What to say:

Install the ClawHub plugin for [tool]

Alternative CLI command:

```bash
openclaw plugins install clawhub:plugin-name
```

After installation, send the original Connect message again.

Examples:

- Any tool with a dedicated ClawHub plugin.

## Connection Troubleshooting

### OpenClaw Says You Do Not Need A Specific Tool

Hold firm and reply:

I do need to use it. I must use [tool name] for this.

This commonly happens with Coolors.

### Not Sure Which Pattern Applies

Send the connect message and read OpenClaw's response:

- Installs without asking: Pattern A.
- Asks for a key, token, or sign-in: Pattern B.
- Says "no API available": ask for an alternative, then use Pattern C or D.
- Errors out or does not recognize the tool: Pattern E.

### Tool Seems Connected But Is Not Responding

- Disconnect and reconnect by sending "Connect [tool name]" again.
- For API key or OAuth tools, verify credentials are still valid in that service's settings.
- For browser-only tools, confirm OpenClaw explicitly said it can work with the service before running a prompt.

### Plugin Install Fails Or Shows Compatibility Error

Ask OpenClaw:

What version of OpenClaw am I running? Is there a compatible version of [plugin name] I can install?

OpenClaw may suggest an npm fallback:

```bash
openclaw plugins install npm:@package/name
```

## Specific Credential Setup Notes

### Notion

Create an integration at `notion.so/my-integrations`, paste the token, and share relevant pages with the integration.

### Calendly

Generate an API key in your Calendly account settings.

### edX

Create an account at `edx.org` first, then provide email and password.

### Google Workspace

Follow the OAuth flow and grant all requested scopes.

## Connection Quick Reference

| Pattern | OpenClaw's response | What you do | Examples |
| --- | --- | --- | --- |
| A - Real MCP | Installs automatically | Nothing, except provide credentials if asked | Airbnb, Wag, Slack, Typeform, Philips Hue |
| B - OAuth / API Key | Walks you through auth | Complete OAuth, paste API key, or provide login | Google Workspace, Strava, Notion, edX, Wix, Calendly, MyHeritage, MasterClass |
| C - Browser Only | "No public API available" | Ask for an alternative way to connect | Ollie, Withings, Vivino, InMyArea, Idealist, Eventbrite, Bean Box, Race Roster, Pawp, LegalNature |
| D - Shopify Trick | "No public API available" | Ask for an alternative, then confirm Shopify trick | Olaplex, The Ordinary, MAC Cosmetics |
| E - ClawHub Plugin | Error or tool not found | Install ClawHub plugin first, then reconnect | Any tool with a dedicated ClawHub plugin |
| Pushback case | "You don't need to use it" | Insist: "I do need to use it." | Coolors |
| Version mismatch | Compatibility error on install | Ask for compatible version or npm fallback | Any versioned ClawHub plugin |

## Intensive Walkthroughs

Use the intensive walkthroughs as fallback guides for the five tools that take the longest to set up. For everything else, start with the Prompt Generator or Connection Patterns.

Intensive walkthroughs listed:

- `google-workspace` for Gmail, Calendar, Drive, Forms, and Sheets
- `calendly`
- `eventbrite`
- `strava`
- `notion`

## Prompt Generator For Connector Setup

The Prompt Generator builds a ready-to-paste setup prompt for a connector. Type a tool name or pick a quick option, hit Generate, and the setup prompt is copied to your clipboard.

Example tool-name placeholder:

- `ollie`
- `airbnb`
- `notion`
- `vivino`

Quick options listed:

- ollie
- airbnb
- withings
- vivino
- wix
- notion
- strava
- king arthur baking
- the ordinary
- charity village
- wag
- calendly
- inmyarea
- idealist
- coolors
- bean box
- slack
- masterclass
- mac cosmetics
- myheritage
- race roster
- philips hue
- typeform
- pawp
- legalnature
- topgolf
- flixbus
- cineplex
- udemy
- uncommon goods
- glassdoor
- todoist
- resy
- greenhouse
- mailchimp
- trezor
- crunchyroll
- aspca pet health insurance
- github
- frontfundr
- roomsketcher
- coursera
- bowlero
- outschool
- workable
- substack
- squarespace
- ziprecruiter
- mansur gavriel
- oura

## Task Workflow

The Annotation Task is the repeatable paid task. Start the timer on HAI before beginning. Stop it when finished.

Claw Onboarding is a one-time setup and does not count as a repeatable task.

### Step 0: Claim And Start HAI Task

Before doing anything else, including opening the OpenClaw VM or Multimango:

1. Go to the HAI platform.
2. Claim the task.
3. Start the timer.

This starts paid time and generates synthetic goals and criteria.

### Step 1: Prompt OpenClaw In The VM

Open the OpenClaw VM and write a complex multi-tool prompt. Multimango will steer you with suggested tools or topic areas.

Use one of those subjects when possible, but reword it in your own words. Do not copy or near-copy prompt text.

Let OpenClaw work through the request end-to-end so you have a complete conversation to annotate.

Use the category picker intentionally for difficult actions. If a category is selected, all follow-up messages must match that category until you clear it.

### Prompt Requirements

Each prompt should:

- Be grounded in a Multimango subject when possible.
- Be written in your own words, not copied verbatim.
- Use at least one permitted tool.
- Avoid all banned tools.
- Be complex and multi-tool when possible.
- Chain multiple steps across more than one tool.
- Drive a real state change when possible.
- Be specific enough for OpenClaw to act without guessing.
- Use real names, filters, numbers, dates, tools, files, and destinations.
- Be part of a conversation with at least two interactions.

Every task should include two or more interactions with the agent. After OpenClaw replies, follow up by asking it to refine, expand, correct, or take the next step.

### State Change Requirement

A valid prompt should make something happen in the world, such as:

- Sending a message.
- Sending an email.
- Creating a file.
- Creating a calendar event.
- Making a booking.
- Updating a sheet.
- Changing a setting.

Read-only prompts do not count on their own unless the tool genuinely cannot do more.

### Step 2: Annotate The Conversation

Open the Claw Annotate task in Multimango and click Annotate.

Select a message range where you and OpenClaw worked on one specific thing together. Click one message as the start and another as the end.

### Step 3: Paste Exact Prompt(s) Into HAI

Paste the exact prompt where you instructed OpenClaw to perform the job. This is the prompt at the start of the selected message range.

If the job used multiple prompt turns, paste the turns together exactly as they appeared in the OpenClaw conversation.

Copy verbatim from the OpenClaw VM conversation. Submit it with the Upload button.

### Step 4: Fill Out Task Information

After prompt upload, HAI asks for fields to make every part of the prompt fully specific.

Fill every field accurately using your own knowledge and the real data from the prompt. If a field truly does not apply, explain why in detail.

Examples of specificity fields may include:

- Full names.
- Exact email addresses.
- Exact contact identifiers.
- Exact dates or years.
- Exact source files, messages, chats, or emails.

### Step 5: Copy Goal And Generated Criteria Into Multimango

Copy the generated goal and all generated rubric criteria from HAI into Multimango.

For each criterion, add:

- Description.
- Category.
- Importance.
- Scoring levels.

Add every prepared criterion. Only leave out a criterion in Step 7 if a verifier scores that specific criterion incorrectly and you remove just that one.

Tasks with substantially fewer criteria than generated may be flagged.

### Step 6: Repair Generated Criteria

Synthetic generated criteria are a starting point only. They are often vague, generic, or flawed.

Use the Rubric Repair Checklist to tighten every criterion before submitting.

### Step 7: Review Trial Results

Verifiers test OpenClaw against the rubric. Review each criterion and decide whether the scoring is accurate.

If a score is inaccurate, mark it as inaccurate and click submit anyway.

Also check Overall Quality Feedback. If Multimango has blocking suggestions, update the rubric to comply.

### Step 8: Submit

Submit the task in Multimango, then submit the task in HAI.

## Rubric Definition

A rubric is a list of criteria a verifier uses to decide whether OpenClaw completed the prompt correctly.

Each criterion should be a single factual check that can be answered yes or no by reading:

- The prompt.
- The relevant data.
- The agent's response or action.

Good rubrics are:

- Precise.
- Prompt-grounded.
- Objective.
- Specific.
- Free of interpretation.

## Positive And Negative Criteria

### Positive Criteria

Positive criteria state what the assistant must do for the response to count as correct. Each positive criterion names one concrete required action, content piece, recipient, date, file, or output.

### Negative Criteria

Negative criteria state specific failure modes. Write them as factual events naming the wrong value or wrong action.

Use factual language such as:

- "The message was sent to..."
- "The email included..."
- "The event was created on..."

Do not write vague prohibition language such as:

- "Should not..."
- "Must not..."
- "Did the wrong thing."

## Working From Synthetic Rubrics

The synthetic rubric is an auto-generated draft. It must be repaired before submission.

Do not submit a rubric until every checklist item has been applied to every criterion.

## Rubric Repair Checklist: Criteria Description

Apply each item to every single criterion, one criterion at a time.

1. For every name in the description, including people, contacts, and group chats, make sure it can only mean one specific thing in the real data. Add last name, username, or another identifier if ambiguous.
2. Confirm every person, chat, and platform named in the description actually exists in the data, and that the named person is actually on the named platform.
3. If the description connects two checks with words like "and," "including," "with," or "as well as," split it into two separate criteria so each check stands alone.
4. Ask whether the criterion can be graded yes or no using only the prompt, data, and agent response. If outside knowledge or judgment is required, rewrite or delete it.
5. Remove opinion words such as appropriate, clearly, correctly, relevant, good, friendly, polite, nice, or suitable. Replace them with specific words, names, dates, or actions.
6. Read the real messages, chats, or emails the description refers to. Make sure the criterion matches what is actually there.
7. Check every date, time, price, address, and number. Copy exactly from the prompt or data, with no paraphrasing or rounding.
8. Replace phrases like "the latest," "the most recent," "usual," "normal," "that group," or "the one we talked about" with the specific item, person, or chat from the real data.
9. Look for "which one?" confusion, such as multiple links, similar names, or several possible matches. Spell out exactly which one is correct.
10. If information must come from a specific source, such as an email or past chat, name the source and exact expected value. Do not write only "includes an address" or similar.
11. For every criterion saying the agent must do X, pin down who or which one so the right action on the wrong person or item does not pass.
12. Remove or rewrite any description requiring the agent to know something it was never told, such as a preference, past decision, or relationship.

## Rubric Repair Checklist: Coverage

1. Think of the 2 or 3 most likely ways the agent could mess up, such as wrong person, wrong group, wrong date, or replying instead of sending a new message. Make sure each has its own criterion saying the agent must not do it.
2. If the task is impossible or ambiguous in the real data, include a criterion that rewards the agent for stopping to ask instead of penalizing it for not completing the task.

## Rubric Repair Checklist: Negative Criteria

1. Make sure every negative criterion states the wrong action as if it happened, using factual language rather than prohibition language.
2. For every negative criterion involving a wrong choice, name both the wrong value and enough context about the correct value.
3. Make sure each negative criterion describes one specific, plausible mistake the agent could realistically make.
4. Make sure each negative criterion targets a different failure than positive criteria already cover.
5. Remove catch-all negatives like "the agent did the wrong thing" or "the message had mistakes." Replace them with one specific wrong action.

## Rubric Repair Checklist: Category

Make sure the category matches what the criterion checks. For example, a criterion about which contact was messaged should not be labeled Communication Style.

When annotating from the OpenClaw VM flow, include Safety & Trustworthiness.

## Rubric Repair Checklist: Importance

Make sure importance matches how central the check is.

Core requirements, such as sending to the right person, should not be Slightly Important. Minor details should not be Critical.

## Rubric Repair Checklist: Scoring

1. Match scoring levels to the criterion. A yes/no check should use two levels: Incorrect and Correct.
2. Only use more than two levels when there is a real middle ground.
3. Each score label must clearly describe what earns that score.

## Rubric Self-Check

Ask: Could two different verifiers read the response and reach different yes/no answers?

If yes, rewrite the criterion to be more specific.

## Prompt Writing Rules

Good prompts include:

- A permitted tool.
- A real task.
- A real state change when possible.
- Specific data and constraints.
- Multiple steps.
- Multiple tools when possible.
- At least two interactions with OpenClaw.
- Enough detail for OpenClaw to act without guessing.

Bad prompts are vague and force OpenClaw to guess.

Do not copy prompt examples verbatim. Verbatim or near-verbatim prompts can be caught by quality checks and rejected.

## Prompt Self-Check

Before submitting, confirm:

1. The prompt is grounded in a Multimango subject when possible and is reworded in your own words.
2. The prompt uses at least one permitted tool.
3. The prompt uses no banned tools.
4. The prompt is complex and multi-tool when possible.
5. The prompt drives a real state change when possible.
6. The prompt is specific enough for the agent to act without guessing.

## Prompt Inspiration Categories Mentioned

The onboarding material listed examples and inspiration across:

- Calendly
- Gmail
- Google Calendar
- Strava
- Google Drive
- Google Forms
- Google Sheets
- Notion
- Eventbrite

Use inspiration only to understand quality.

## Community Prompt Inspiration From Onboarding

These were listed as real-world examples and prompt patterns organized by the tools they touch. They are inspiration items, not task requirements.

### Community Inspiration Counts

- Inspiration from the Community: 31
- Calendly: 4
- Gmail: 6
- Google Calendar: 4
- Strava: 4
- Google Drive: 4
- Google Forms: 2
- Google Sheets: 2
- Notion: 5

### Gmail / Google Workspace Inspiration

- Rikuo (@riku720720): `gogcli` tool that allows OpenClaw to access Google services such as Gmail, Calendar, and Drive through CLI.
- Misbah Syed (@MisbahSy): Gog Google Workspace CLI connects the agent to Gmail, Calendar, and Drive, allowing it to pull calendar data, cross-reference inbox data, and draft follow-up emails.
- AI Edge (@aiedge_): Best OpenClaw skills list featuring Gog for Gmail, Calendar, Drive, Contacts, Sheets, and Docs integration.
- Anita Kirkovska (@anitakirkovska): Safe OpenClaw setup using a new separate Gmail account with Google Cloud CLI for Gmail and Google Drive access on a Mac Mini.
- Andrew Warner (@AndrewWarner): How to give OpenClaw access to many apps safely by using Gmail with draft-only permissions so the agent cannot send emails directly.
- Misbah Syed (@MisbahSy): Google Workspace CLI (`gws`) gives AI agents access to Gmail, Drive, Calendar, Sheets, and Docs for OpenClaw workflows.

### Google Calendar Inspiration

- Dan Peguine (@danpeguine): OpenClaw timeblocks tasks in calendar based on importance and scores urgency with a custom algorithm for weekly reviews.
- AX Base (@dify_base): `gogcli` for Google Calendar enables availability checks and Google Meet link generation in seconds.
- Rowan Trollope (@rowantrollope): Set up OpenClaw with Google CLI to query calendar with sub-second latency using Redis Context Engine.
- WenHao Yu: OpenClaw Telegram mobile plus desktop workflow with Gog for Gmail, calendar, and daily brief workflows.

### Strava / Health Inspiration

- Christoph Rumpel (@christophrumpel): Personal trainer and health coach OpenClaw setup pulling Whoop sleep and recovery, Withings body data, and managing a Hevy lifting program.
- Patrick Collison (@patrickc): OpenClaw was given an Apple Health data export for heart rate versus travel analysis using GPS and time zone approximation.
- OpenClaw Skills Library: Strava Training Coach skill for running injury prevention, mileage spike monitoring, and ACWR with Oura Ring integration.
- OpenClaw Plugin Directory: ClawDrill plugin that turns a group chat into a Strava fitness competition with live leaderboard and coach commentary.
- Oura: Check sleep scores, readiness, or activity metrics from an Oura ring.

### Google Drive Inspiration

- Nick Spisak (@NickSpisak_): Automated life setup using a locked-down Google Drive managed by OpenClaw with per-folder progress sheets and markdown implementation plans.
- THISMA (@thismacapital): `gogcli` v0.10.0 supports Google terminal management for Docs, Slides, and Drive for OpenClaw bot personal use.
- Hiten Shah (@hnshah): Using GitHub repos instead of Google Drive to share files between humans and the OpenClaw bot with a Gmail account.
- Mike Futia (@mikefutia): Animated video generator skill packaged with a full setup guide in a Google Drive folder for OpenClaw users.

### Notion Inspiration

- Dan Peguine (@danpeguine): Organized bloodwork lab results into a Notion database through OpenClaw.
- Simon Hoiberg (@SimonHoiberg): OpenClaw Notion integration for team access to wiki and knowledge base, with voice updates, project boards, and editorial collaboration.
- Josh Pigford (@Shpigford): Business transfer document workflow where OpenClaw analyzes Notion docs and a GitHub repo to generate personalized transfer docs.
- Andrew Warner (@AndrewWarner): OpenClaw wiped a Notion database, followed by a safer approach using Zapier with draft-only permissions.
- Alex Hillman (@alexhillman): Open-source Notion export migration skill for an OpenClaw-powered assistant system.

## Examples Of Strong Prompt Qualities From Onboarding

The examples were considered strong when they:

- Used real booking data.
- Extracted specific artifacts such as company names.
- Wrote to a named Google Sheet.
- Named a sender and time window.
- Extracted specific content from email.
- Sent a result to a named recipient.
- Filtered calendar events by title and time range.
- Created Notion pages with specific fields.
- Filtered activities by distance and time window.
- Uploaded or created files with specific names.
- Created forms with specified options.
- Sent links or summaries to defined recipients.
- Created calendar events with location, time, and reminder.
- Used defined thresholds such as spending more than double budget.
- Applied conditional logic, such as creating a reminder only if an email exists.
- Cross-referenced availability before creating a calendar event.

These are quality patterns.

## Good Prompt Examples From Onboarding

These examples were included in the onboarding material as examples of strong prompts. They are for review and comparison.

### 1. Calendly

Prompt:

Look at every meeting booked through my Calendly in the last 30 days, pull out every company name mentioned in the invitee notes, and add each one as a new row in my 'Q2 Pipeline' Google Sheet.

Why this is good:

This prompt is grounded in real Calendly booking data, extracts specific artifacts such as company names, and drives a state change by adding new rows to a named sheet.

### 2. Gmail

Prompt:

Search my Gmail for every email from my landlord this year, pull out any mention of a rent increase or lease renewal, and send a summary to my partner Jess at jess@email.com.

Why this is good:

This prompt names a specific sender, a time window, the content to extract, and a real recipient.

### 3. Google Calendar

Prompt:

Pull every meeting on my Google Calendar for the next two weeks that has 'interview' in the title, and create a Notion page for each one with the candidate's name, time, and LinkedIn link from the invite.

Why this is good:

This prompt uses real calendar data with a defined filter and creates individual Notion pages.

### 4. Strava

Prompt:

Look at my Strava activities from the last 60 days, find every run I did over 10 kilometers, and add them as rows in my 'Marathon Training' Google Sheet with date, distance, and pace.

Why this is good:

This prompt names a time range, filter, and concrete end state.

### 5. Notion

Prompt:

Search my Notion workspace for every page tagged 'client-call' from last quarter, pull out any follow-up action items mentioned, and email the compiled list to my business partner Raj at raj@company.com.

Why this is good:

This prompt uses a specific tag filter and sends the output to a named address.

### 6. Google Drive

Prompt:

Find the PDF contract my lawyer Sarah shared with me in Google Drive last week, extract the termination clause, and send it as a Gmail reply to her.

Why this is good:

This prompt names a real file and a real recipient.

### 7. Google Forms

Prompt:

Look at the responses to my 'Team Offsite Preferences' Google Form, count how many people picked each location, and send the results summary to our team lead at teamlead@company.com via Gmail.

Why this is good:

This prompt uses real submission data and sends results to a named contact.

### 8. Eventbrite

Prompt:

Pull the attendee list from my upcoming Eventbrite event 'AI Meetup March 15', find anyone who also follows me on Eventbrite, and send them a personal Gmail welcoming them.

Why this is good:

This prompt cross-references real data and sends Gmail messages to matched attendees.

### 9. Google Sheets

Prompt:

Open my 'Freelance Invoices' Google Sheet, find every row where the 'Status' column says 'Overdue', and send each client a polite reminder email from my Gmail with the invoice amount and original due date.

Why this is good:

This prompt names the sheet, the filter, and sends real reminder emails.

### 10. Calendly

Prompt:

Check my Calendly availability for next week, find three 30-minute slots that don't conflict with anything in my Google Calendar, and send those times to my client Priya Sharma at priya@acme.com.

Why this is good:

This prompt uses two real data sources and emails a named client.

### 11. Google Calendar

Prompt:

Look at my Google Calendar for yesterday, find the meeting with my manager David Chen, pull the notes from the attached Google Doc, and create a new Notion page titled 'David 1:1 - [date]' with the notes copied in.

Why this is good:

This prompt chains two real sources and creates a titled Notion page.

### 12. Gmail

Prompt:

Search my Gmail for every receipt from Amazon in the last three months, extract the totals, and add them as new rows in my 'Expenses 2026' Google Sheet under the 'Shopping' category.

Why this is good:

This prompt names a sender, time window, and writes categorized rows.

### 13. Strava

Prompt:

Find the longest ride I did this month on Strava, pull the route map, and upload it to my Google Drive folder called 'Cycling Routes' with the date as the filename.

Why this is good:

This prompt has a clear selection criterion and writes to a named folder with a filename convention.

### 14. Notion

Prompt:

Go through my 'Book Notes' database in Notion, find every book I marked as 'Finished' in 2025, and create a new Google Doc titled 'My 2025 Reading List' with the titles and my ratings.

Why this is good:

This prompt uses a real filter and creates a titled doc.

### 15. Google Forms

Prompt:

Create a new Google Form called 'Book Club - April Pick' with three options (Piranesi, Pachinko, Dune), and email the link to everyone in my 'Book Club' contact group from Gmail.

Why this is good:

This prompt causes two verifiable state changes: a form and an email.

### 16. Eventbrite

Prompt:

Pull my ticket from the Eventbrite event 'Design Week NYC' next Thursday, add it to my Google Calendar with the venue as the location, and set a reminder 2 hours before.

Why this is good:

This prompt creates a real calendar event with specified location and reminder.

### 17. Google Sheets

Prompt:

Read the 'Monthly Budget' Google Sheet, find any category where I spent more than double what I budgeted, and send me a summary Gmail with the overage amounts and categories.

Why this is good:

This prompt uses a defined threshold and sends a real summary email.

### 18. Gmail

Prompt:

Go through my past 2 weeks of emails, look to see if I received any emails about receiving a package at my Amazon locker, if I did, create a Google Calendar reminder to go pick it up anytime past 8:15pm today.

Why this is good:

This prompt uses a real filter and creates a calendar reminder only if the condition is met.

### 19. Eventbrite

Prompt:

Find an indie concert in SF for me to attend in May on Eventbrite, check my Calendly to see if I am available to attend, and if I am available put it on my Google Calendar for the time that the event is with a link to the Eventbrite tickets page so I can purchase them.

Why this is good:

This prompt cross-references real availability and conditionally creates a calendar event with a link.

### 20. Calendly

Prompt:

Look at my Calendly bookings for next week, find any back to back meetings with less than 15 minutes between them, and add a 10 minute buffer block on my Google Calendar between each one.

Why this is good:

This prompt applies a defined condition and creates real buffer blocks.

## Bad Prompt Examples From Onboarding

Bad prompts are vague, underspecified, lack a clear end state, or force OpenClaw to guess. The onboarding material noted that these examples were not prompts recommended by Multimango.

### 1. Calendly

Bad prompt:

Find me a good time to meet with my client next week.

Why this is bad:

No client is named, no calendar is cross-referenced, and there is no end state.

### 2. Gmail

Bad prompt:

Send my friend an email about the plan.

Why this is bad:

The friend is not named, "the plan" is undefined, and there is no recipient address.

### 3. Google Calendar

Bad prompt:

Add a meeting to my calendar for tomorrow.

Why this is bad:

No title, time, attendees, or duration is given. The agent has to guess everything.

### 4. Strava

Bad prompt:

Look at my recent runs and tell me how I'm doing.

Why this is bad:

No time range, no metric for "how I'm doing," and nothing is created or sent.

### 5. Notion

Bad prompt:

Summarize my Notion notes from this week.

Why this is bad:

No filter beyond "this week," no destination for the summary, and no defined output format.

### 6. Google Drive

Bad prompt:

Find that document I was working on and clean it up.

Why this is bad:

The document is not named and "clean it up" has no definition the agent can act on.

### 7. Google Forms

Bad prompt:

Make a form I can send to my team.

Why this is bad:

No title, no questions, and no team is identified.

### 8. Eventbrite

Bad prompt:

Check my upcoming Eventbrite events.

Why this is bad:

It is a lookup with no follow-on action and nothing is created or sent.

### 9. Google Sheets

Bad prompt:

Update my spreadsheet with this month's expenses.

Why this is bad:

No sheet is named, the expense data is not provided, and the column structure is unspecified.

### 10. Calendly

Bad prompt:

Block off some time on my calendar so I'm not overbooked.

Why this is bad:

No time range, duration, or block title is specified.

### 11. Gmail

Bad prompt:

Reply to the email I got from my boss.

Why this is bad:

No specific email is identified and the reply content is undefined.

### 12. Google Calendar

Bad prompt:

Remind me about my meeting tomorrow.

Why this is bad:

No specific meeting is named and a vague reminder is not a verifiable state change.

### 13. Strava

Bad prompt:

Find my best run ever and save it somewhere.

Why this is bad:

"Best" has no metric and "somewhere" has no destination.

### 14. Notion

Bad prompt:

Add my ideas from today to Notion.

Why this is bad:

No ideas are provided, no database is named, and no structure is defined.

### 15. Google Drive

Bad prompt:

Organize my Google Drive a little.

Why this is bad:

No folder, no organizing rule, and no verifiable end state.

### 16. Google Forms

Bad prompt:

Edit my feedback form to make it better.

Why this is bad:

"Better" has no definition the agent can execute against.

### 17. Eventbrite

Bad prompt:

Let my attendees know about a change to my event.

Why this is bad:

No event is named, the change is not described, and no message is drafted.

### 18. Google Sheets

Bad prompt:

Look at my budget sheet and see if anything looks off.

Why this is bad:

No sheet is named, "looks off" has no threshold, and there is no end state.

### 19. Notion

Bad prompt:

Clean up my Notion workspace.

Why this is bad:

No database is targeted and "clean up" has no defined criteria.

### 20. Calendly

Bad prompt:

Send my availability to someone I need to meet with.

Why this is bad:

No contact is named, no email address is given, and no time range is specified.

## Additional Good/Bad Prompt Comparison From Onboarding

Bad prompt:

Check Crumbl for me.

Why this is bad:

It forces the agent to guess the menu, dietary filter, location, date, output format, and whether any state change should happen.

Good prompt:

Check Crumbl's menu for this week and tell me which two flavors are gluten-free, then find the three closest Crumbl stores to 94110 and list their hours for Saturday. Email this to my buddy John from the ski trip.

Why this is good:

It names the filters, location, day, output, and state change. It gives enough context for the agent to identify the right contact.

### Bad Prompt Warning Notes

- "Best" is undefined unless the prompt gives a measurable selection rule.
- "Somewhere" is undefined unless the prompt gives a specific destination, folder, service, or location.
- "Better" is not something an agent can execute unless the prompt defines exactly what to change.
- Vague prompts force the agent to guess and are likely to fail.

## Extra Notes On Messaging And Risk

The project expects use of real information only to the extent you are comfortable. Substitute or omit sensitive details where appropriate.

Irreversible or high-risk actions need explicit approval before proceeding.

Prompts involving messages and email require special care:

- Verify the exact recipient.
- Verify the platform.
- Verify whether the task asks for a new message, a reply, or a forwarded message.
- Verify exact content to include.
- Use negative criteria for common mistakes such as wrong recipient or wrong thread.

## Bonus

After completing onboarding and finishing one task, the project states there is a $22 bonus.

## Fast Assessment Facts

- HAI is for claiming tasks and running the timer.
- Multimango is for annotation.
- OpenClaw VM is where you prompt OpenClaw.
- Start HAI before opening Multimango or the VM.
- One HAI claim equals one task.
- Bookmark the OpenClaw VM URL.
- Fill out `USER.md`, `IDENTITY.md`, and `SOUL.md` during onboarding.
- Use personal email for real service connections.
- Must connect Google Workspace plus at least one required extra tool.
- Do not use Composio.
- Do not use banned social tools.
- Prompt inside OpenClaw VM only.
- Every task needs two or more interactions.
- Every prompt must use at least one permitted tool.
- Prompt should drive a real state change when possible.
- Annotate the selected conversation range in Multimango.
- Paste exact prompt text into HAI.
- Fill HAI specificity fields yourself.
- Repair every synthetic rubric criterion.
- Include Safety & Trustworthiness.
- Submit in Multimango, then HAI.

## Assessment Progress Notes

Last updated: 2026-06-12

- User passed the OpenClaw/Project Obsidian onboarding assessment and can start tasking.
- OpenClaw differs from a normal chatbot because it is an agent that acts through connected tools and services, not just a text generator. The project also describes OpenClaw as using a single long-running conversation thread for context.
- Privacy rule: the user controls what they share and should only use real personal information to the extent they are comfortable.
- Strong OpenClaw tasks use two or more tools when possible, include specific data and constraints, and create a verifiable state change such as a created sheet, updated calendar event, sent email, created document, or Telegram message.
- If an assessment explicitly says LLM-authored workflow text is disallowed, do not submit text written by an LLM. Use only self-written workflow descriptions; LLM help should be limited to structure, consistency checks, or examples that are rewritten in the user's own words.
- For task workflow selection, include only the user prompt and OpenClaw tool/trajectory messages that belong to the specific task. Exclude unrelated weather checks, standalone notifications, retries, or messages from other tasks.
- Rubric criteria should be one check at a time. Split bundled criteria joined by words such as "and," "including," or "with."
- Rubric criteria must identify ambiguous people, files, links, dates, amounts, tools, and sources precisely. Use exact names, exact links, exact dates, and the relevant source when the data provides them.
- Remove subjective words such as good, clear, appropriate, properly, relevant, or polite unless they are replaced with concrete verifiable content.
- Negative criteria should describe a specific plausible wrong action as if it happened. Avoid prohibition language such as "should not" or catch-all language such as "did the wrong thing."
- When checking verifier scores, compare the score to the actual prompt output. If the output says the positive requirement happened, a `0 out of 1` score is incorrect. If a negative criterion is scored `1 out of 1`, that means the agent failed by doing the bad action.
