# Instructions

## General

- Use the 'ask_user_question' tool whenever you ask the user anything
- For changes in a Git repository, work in a Git worktree based on `origin/main` unless
the user specifies another ref. Make changes on a dedicated branch. When complete, commit
them and report the branch name and commit for the user to merge. Do not modify the
original checkout. 

## Approval required

The following actions ALWAYS require user approval.
ALWAYS explain in a short sentence why this is needed and what the action does.

- Running administrative commands locally (e.g. sudo, rm -rf) always require approval from the user
- Installing/Uninstalling new applications (like via brew or npm)
- Deleting system files (outside a git repo, files that are not tracked)
- git force pushes (explain why it is needed)


