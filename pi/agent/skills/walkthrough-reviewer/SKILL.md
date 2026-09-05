---
name: walkthrough-reviewer
description: Create a walkthrough review for the user that focuses on the important aspects of a code change. Resolve code changes and context with git or a CLI that interacts with GitHub or GitLab. The user must call this skill.
---

# Analysis

Analyze the code changes from these perspectives:
- What is the micro- and macro-level impact of the change?
- Which system components have changed?
- Which risks have been mitigated?
- Which risks have been introduced?
- What is the impact on users and other systems?

# Report

The report should contain all the required information from the analysis.
It should show the changes at different zoom levels, starting with a short overview and followed by details.
For each zoom level, define appropriate instructions for representing change details and flows as diagrams later.
Showcase code changes that are complex, critical, or important to the change.
Create a quiz that tests the user's understanding of the changes. Each question should have three possible answers, with only one correct answer. The quiz should be based on the content that is included in the report.

# Format

The format defines how the user wants to walk through the changes.
Always ask the user which format to use from the list below.
The user can also provide a custom format.

- HTML - Instructions are documented in `references/format-html.md`.
- Chat - Instructions are documented in `references/format-chat.md`.
