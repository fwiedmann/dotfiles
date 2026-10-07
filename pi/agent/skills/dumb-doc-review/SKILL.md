---
name: dumb-doc-review
description: Use automatically after creating or editing documentation, even when no review was requested. Have a fresh subagent with no prior context read the changed documents as a first-time reader and report gaps in understanding before finishing.
---

# Review written documentation

After creating or editing documentation:

1. Collect the documentation files you created or edited in this task. Pass only those paths to the reviewer. If the task requires judging several documents together, include each of those documents explicitly.
2. Delegate the review to the `dumb-doc-reviewer` in a fresh, independent context. Give it only the exact file paths and the request to review those files according to its instructions. Do not pass this conversation or your interpretation of the documents. Wait for its feedback before finishing.
3. Read the returned feedback. Correct concrete problems in the documentation you own, and report any unresolved questions about intent to the user. Do not guess answers that the source material does not establish.

Run one review after a coherent batch of documentation edits, not after every individual write. The review is complete when the feedback has been considered and the user knows about any unresolved gaps.
