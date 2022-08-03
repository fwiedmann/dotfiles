-- set ale config before loading plugins
vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 1
vim.g.gitgutter_highlight_linenrs = 1


vim.cmd[[
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'javascript': ['prettier','eslint'],
\   'typescript': ['prettier','eslint']
\}
]]

require('lualine').setup()
require("fwiedmann")
require("fwiedmann/packer")
require("fwiedmann/keybindings")
require("fwiedmann/lsp")
