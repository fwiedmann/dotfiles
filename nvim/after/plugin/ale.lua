vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 1

vim.cmd[[
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'terraform': ['terraform'],
\   'java': ['google_java_format', 'remove_trailing_lines', 'trim_whitespace' ]
\}
]]
