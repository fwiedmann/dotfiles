vim.g.mapleader = " "

-- pls dont hate me
vim.keymap.set('n', 'C-c', 'ESC')

-- write
vim.keymap.set('n', '<Leader>w', ':write<cr>')

-- close buffer
vim.keymap.set('n', '<Leader>q', ':bd<cr>')

-- close vim
vim.keymap.set('n', 'q', ':quit<cr>')

-- undo
vim.keymap.set('n', '<Leader>u', ':undo<cr>')

-- redo
vim.keymap.set('n', '<Leader>r', ':redo<cr>')

-- Telescope
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files hidden=true<cr>')
vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<cr>')
vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<cr>')
vim.keymap.set('n', '<Leader>fp', ':Telescope projects<cr>')

-- nerdtree
vim.keymap.set('n', '<Leader>n', ':NvimTreeToggle<cr>')

-- move between splits with arrow keys
vim.keymap.set('n', '<C-k>', ':wincmd k<cr>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<cr>', { silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<cr>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<cr>', { silent = true })

-- move buffers
vim.keymap.set('n', '<S-Left>', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<S-Right>', ':bn<CR>', { silent = true })

-- dap debugger
vim.keymap.set('n', '<Leader>db', ":lua require'dap'.toggle_breakpoint()<cr>", { silent = true })
vim.keymap.set('n', '<Leader>ds', ":lua require'dap'.continue()<cr>", { silent = true })
vim.keymap.set('n', '<Leader>di', ":lua require'dap'.step_into()<cr>", { silent = true })
vim.keymap.set('n', '<Leader>do', ":lua require'dap'.step_over()<cr>", { silent = true })
