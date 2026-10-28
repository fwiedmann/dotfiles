---
name: permission-review
description: Review planned work and obtain scoped user approval before remote writes, administrative commands, application installs or removals, deleting untracked files outside a Git repo, or force pushes.
---

# Permission review

1. During planning, inspect the whole task using read-only operations. Consider likely follow-up steps and indirect effects of commands and tools. Identify all known actions requiring approval under the active instructions. Mark unknown actions or targets as unresolved rather than guessing.
2. Before execution, summarize the known approval-requiring actions together: their targets, what they do, why they are needed, and relevant consequences such as data changed or sent to a remote. State what ordinary local work can proceed without approval and note unresolved scope.
3. If any known actions and targets are not already explicitly approved for this task, ask for their approval in one request. Use the available question interface and wait for an explicit answer. Record the approved and excluded scope. A task request, silence, an abandoned question, or approval of a different action is not approval. If declined, continue only with permitted work.
4. Perform only the approved actions within their stated scope, without asking again for the same approval. If an action, target, or material consequence outside that scope emerges, stop before it and request additional approval. If approval is withdrawn or a confirmation is cancelled, stop the affected action; do not retry it without explicit approval. Follow separate tool-level confirmations and higher-priority instructions; this review does not bypass them.

Approval applies only to the current task and can be withdrawn by the user. Do not treat this skill as a technical enforcement mechanism.
