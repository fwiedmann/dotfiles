# Instructions

## General

- Use the 'ask_user_question' tool whenever you ask the user anything
- Once at the start of the session, check whether the session's working directory is inside
a Git repository. If it is not, ask the user to initialize a repository there without
configuring any remote (including `origin`). Wait for their response before making changes.
Do not repeat this check on later turns.
- For changes in a Git repository, work in a Git worktree based on the original checkout's
current branch unless the user specifies another ref. Create the worktree under the OS temp
directory (`$TMPDIR` when set, otherwise `/tmp`), inside a `pi-agent-worktrees/`
subdirectory. Make changes on a dedicated branch and commit them locally. When finished,
merge that branch into the branch checked out in the original checkout, then remove the
dedicated worktree. Do not push. If the merge cannot complete safely, leave the worktree
intact and ask the user how to proceed.

## Write permission and approval

Ordinary local writes needed for the user's task are permitted without a separate approval. Preserve unrelated user changes and follow the Git workflow above.

During planning, if the task may require a remote write, administrative command (e.g. sudo or rm -rf), application installation or uninstallation (e.g. via brew or npm), deletion of untracked files outside a Git repo, or Git force push, load and follow the `permission-review` skill before executing the plan. If the need emerges later, review it before taking the action. These actions always require user approval. Explain what each action does and why it is needed.

A task's approval covers only the actions and targets the user explicitly approves. Follow any additional tool-level or higher-priority approval requirements.
