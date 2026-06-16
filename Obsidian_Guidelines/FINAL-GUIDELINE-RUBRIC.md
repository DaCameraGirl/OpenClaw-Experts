# Step 2 Goal

The user asks the assistant to complete the third-party services step of OpenClaw onboarding by getting an approved ClawHub skill detected in the onboarding UI and determining what skill or connector name the user should enter before proceeding.

# Criterion 1

Criteria Description:
The assistant installs and tests the Wikipedia ClawHub skill in the OpenClaw environment.

Category:
Task Completion

Importance:
Critically Important

Scoring:

0:
The assistant does not install the Wikipedia skill or does not test it.

1:
The assistant installs the Wikipedia skill but gives incomplete test evidence or does not summarize the requested "personal knowledge management" result.

2:
The assistant installs the Wikipedia skill, tests it by searching Wikipedia for "personal knowledge management", and summarizes one result.

# Criterion 2

Criteria Description:
The assistant avoids asking the user to run OpenClaw installation commands in local Windows PowerShell.

Category:
Instruction Following

Importance:
Very Important

Scoring:

0:
The assistant asks the user to run installation or setup commands in local Windows PowerShell.

1:
The assistant mostly runs commands in the OpenClaw environment but gives unclear guidance about where commands are being run.

2:
The assistant runs setup in the OpenClaw environment and clearly explains that the user does not need to run local Windows PowerShell commands.

# Criterion 3

Criteria Description:
The assistant authenticates GitHub CLI using the GitHub device authorization flow.

Category:
Tool Use

Importance:
Very Important

Scoring:

0:
The assistant does not start or complete GitHub CLI authentication after the user asks to hook up GitHub.

1:
The assistant starts GitHub CLI authentication but does not clearly guide the user through the device-code authorization step or verify completion.

2:
The assistant starts GitHub CLI authentication, gives the GitHub device-code URL and code, proceeds after the user authorizes it, and verifies that GitHub CLI is logged in.

# Criterion 4

Criteria Description:
The assistant accurately explains why GitHub does not appear in the ClawHub detected-skills list.

Category:
Factuality & Hallucination

Importance:
Important

Scoring:

0:
The assistant incorrectly says GitHub should appear in the ClawHub detected-skills list after GitHub CLI authentication.

1:
The assistant gives an unclear or incomplete explanation of the difference between GitHub CLI authentication and ClawHub detected skills.

2:
The assistant clearly explains that the detected-skills list is for ClawHub skills like Wikipedia, while GitHub CLI authentication does not necessarily appear in that detector.

# Criterion 5

Criteria Description:
The assistant accurately explains whether one detected skill is enough to proceed with onboarding.

Category:
Factuality & Hallucination

Importance:
Critically Important

Scoring:

0:
The assistant says one detected skill is enough to complete onboarding without checking or acknowledging the onboarding requirements.

1:
The assistant gives mixed or uncertain guidance about whether one detected skill is enough to proceed.

2:
The assistant bases the answer on the onboarding instructions or UI requirements and clearly distinguishes "detected by this screen" from "fully complete onboarding."

# Criterion 6

Criteria Description:
The assistant reports the status of added skills accurately.

Category:
Tool Use

Importance:
Important

Scoring:

0:
The assistant reports all added skills as working even when one is blocked, untested, or not actually installed.

1:
The assistant mentions some skill status details but blurs working, blocked, and built-in tools.

2:
The assistant clearly reports which skills are installed and tested, which are built in, and which are blocked or not fully working.
