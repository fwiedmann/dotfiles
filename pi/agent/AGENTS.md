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

## Approval required

The following actions ALWAYS require user approval.
ALWAYS explain in a short sentence why this is needed and what the action does.

- Running administrative commands locally (e.g. sudo, rm -rf) always require approval from the user
- Installing/Uninstalling new applications (like via brew or npm)
- Deleting system files (outside a git repo, files that are not tracked)
- git force pushes (explain why it is needed)
