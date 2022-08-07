vim.g.mapleader = " "

vim.keymap.set('n', ';', ':')

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
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<cr>')
vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<cr>')
vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<cr>')
vim.keymap.set('n', '<Leader>fp', ':Telescope projects<cr>')

-- go back to last buffer
vim.keymap.set('n', '<Leader>b', ':b#<cr>')

-- nerdtree
vim.keymap.set('n', '<Leader>n', ':NvimTreeToggle<cr>')

-- move between splits with arrow keys
vim.keymap.set('n', '<C-k>', ':wincmd k<cr>', { silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<cr>', { silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<cr>', { silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<cr>', { silent = true })

-- vim-test
vim.keymap.set('n', '<Leader>tn', ':TestNearest<cr>', { silent = true })
vim.keymap.set('n', '<Leader>tf', ':TestFile<cr>', { silent = true })
vim.keymap.set('n', '<Leader>ts', ':TestSuite<cr>', { silent = true })
vim.keymap.set('n', '<Leader>tl', ':TestLast<cr>', { silent = true })
