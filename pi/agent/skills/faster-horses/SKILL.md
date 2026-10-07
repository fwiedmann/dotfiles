---
name: faster-horses
description: Clarify the need behind a request before choosing a solution. Use during issue refinement or brainstorming, when vague feature planning leaves outcome-changing assumptions unresolved, or when a user proposes a solution whose underlying problem is unclear or may have a simpler answer in the existing environment.
---

# Faster horses

Work through Situation → Problem → Need / outcome → Solution with the user. Treat a proposed solution as a hypothesis worth testing, not a mistake. The goal is confidence about what to build, including discovering when an existing capability is enough.

## Start with what is known

Extract the situation, problem, desired outcome, proposed solution, and constraints from the conversation. Separate confirmed facts from your assumptions. Keep this summary short.

Use the full discovery process when an uncertainty could materially change the solution. For a clear implementation request, proceed without an interview unless a concrete alternative in the environment warrants a brief comparison.

## Discover together

Ask one or two focused questions per round, then wait for the user's response. Use ordinary conversation or the host's question interface, following its interaction rules. No specific tool is required.

Prefer open-ended questions when discovering the situation or problem. Offer choices only when they help the user compare known possibilities, and leave room for an answer outside those choices. Keep inferred needs provisional until the user confirms them. Avoid inventing preferences or steering answers toward your preferred solution.

Choose the next question by which uncertainty is most likely to change what gets built. Use the stages below as a guide, not a fixed questionnaire. Skip answered questions and return to earlier stages when new information changes the picture.

### 1. Situation

Establish who is affected, what they are trying to do, and under which circumstances. Prefer a recent concrete incident or workflow over hypothetical preferences.

Useful prompts include asking the user to describe the last occurrence, their current workflow, or their workaround.

Ready to move on when you can describe the affected user and the relevant workflow without filling gaps with guesses.

### 2. Problem

Identify what prevents progress and what it costs. Distinguish the observed symptom from an assumed cause. Establish frequency or impact where it affects the decision.

Useful prompts include asking where the workflow breaks down, what happens afterward, or why the current workaround is insufficient.

Ready to move on when the user confirms the obstacle and why it matters.

### 3. Need / outcome

Describe what should become possible independently of a particular implementation. Establish observable success and constraints that could rule out an approach, such as timing, cost, compatibility, or operational burden.

Useful prompts include asking what a successful result looks like and what must remain unchanged.

Ready to move on when the user confirms an outcome specific enough to compare solutions and judge whether they work. Qualitative success criteria are acceptable; use measurements when available.

### 4. Solution

Compare approaches against the confirmed outcome and constraints. Keep the user's original proposal as a valid candidate. Explain why the selected approach fits and what uncertainty remains.

Ready to finish when the user chooses an approach or agrees on a small validation step for an unresolved assumption.

## When the user already proposes a solution

Work backward from the proposal to the problem and outcome. If they are already established, use them; otherwise confirm your interpretation through a focused question.

Inspect the relevant surrounding environment before suggesting alternatives. Start with the nearest relevant documentation, configuration, existing features, code paths, or tools. Keep inspection read-only and proportional to the decision. Stop when you have enough evidence for a useful comparison; broad audits are unnecessary.

Offer one or two credible alternatives when inspection supports them. Look for:

- An existing feature or configuration that already meets the need.
- A quick win that solves enough of the problem with less work.
- A different approach that better fits the outcome or constraints.

For each alternative, name the evidence for its availability, explain how it meets the same need, and state its main trade-off against the user's proposal. Mark unverified possibilities explicitly. If the environment is unavailable, state that limit rather than claim a capability exists.

If no useful alternative emerges, say so and proceed with the original proposal once the outcome is clear. Challenge with evidence, not reflexively. Let the user decide, then respect that choice without reopening it unless new evidence changes the decision.

## Finish with a handoff

Finish discovery when the user confirms the situation, problem, and desired outcome, and either chooses a solution or accepts a validation step. Remaining assumptions must be explicitly accepted or assigned a way to check them. If the user asks to proceed sooner, summarize the outstanding assumptions and honor that direction within applicable safety constraints.

Produce a compact handoff in the conversation:

- **Situation:** Who is affected and what they are trying to do.
- **Problem:** What prevents progress and why it matters.
- **Need / outcome:** What should change and how to recognize success.
- **Solution:** The chosen approach, or the experiment needed before choosing, and why it fits.
- **Open assumptions:** What remains uncertain and how to check it, or none.

Keep solution selection provisional when evidence is weak. A small experiment can be the right result instead of a feature plan. This skill ends at discovery and handoff; implementation follows the user's request and the normal planning process.
