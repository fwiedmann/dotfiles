vim.g.mapleader = " "

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}
local leader_mappings = {
  name = "Global Leader",
  ["<Leader>w"] = { ":write<cr>", "write buffer" },
  ["<Leader>q"] = { ":bd<cr>", "close buffer" },
  ["<Leader>u"] = { ":undo<cr>", "undo" },
  ["<Leader>r"] = { ":redo<cr>", "redo" },
  ["<Leader>ff"] = { ":Telescope find_files hidden=true<cr>", "find files in workspace" },
  ["<Leader>fg"] = { ":Telescope live_grep<cr>", "find in files in workspace" },
  ["<Leader>fb"] = { ":Telescope buffers<cr>", "show open buffers" },
  ["<Leader>n"] = { ":NvimTreeToggle<cr>", "open/close nvimTree" },
  ["<Leader>db"] = { ":lua require'dap'.toggle_breakpoint()<cr>", "toggle breakpoint" },
  ["<Leader>ds"] = { ":lua require'dap'.continue()<cr>", "start debugger" },
  ["<Leader>di"] = { ":lua require'dap'.step_into()<cr>", "step into" },
  ["<Leader>do"] = { ":lua require'dap'.step_over()<cr>", "step over" },
  -- http requst
  ["<Leader>hr"] = { "<Plug>RestNvim", "Run HTTP request at current cursor" },
  ["<Leader>hl"] = { "<Plug>RestNvimLast", "Run last HTTP request" },
  ["<Leader>hs"] = { "<Plug>RestNvimPreview", "Show curl preview of request" },
  -- code
  ["<Leader>cs"] = { ":Lspsaga signature_help<CR>", "Show code signature" },
  ["<Leader>cr"] = { ":Lspsaga rename<CR>", "Rename" },
  ["<Leader>so"] = { function()
    vim.opt.spell = not (vim.opt.spell:get())
  end, "Rename" },
  -- uuid
  ["<Leader>gu"] = { ":r !uuidgen|tr \"[A-Z]\" \"[a-z]\"<CR>", "generate uuid" },
}

local control_mappings = {
  name = "Global Control",
  ["<C-c>"] = { "ESC", "escape bind" },
  ["<C-k>"] = { ":wincmd k<cr>", "move buffer focus up" },
  ["<C-j>"] = { ":wincmd j<cr>", "move buffer focus down" },
  ["<C-h>"] = { ":wincmd h<cr>", "move buffer focus left" },
  ["<C-l>"] = { ":wincmd l<cr>", "move buffer focus right" },
}

local shift_mappings = {
  name = "Global shift",
  ["<S-Left>"] = { ":bp<CR>", "go to previous buffer" },
  ["<S-Right>"] = { ":bn<CR>", "go to next buffer" },
}

local single_mappings = {
  name = "Global Single",
  ["q"] = { ":quit<cr>", "quit" },
  ["<Left>"] = { ":vertical resize -5<cr>", "resize - vertical" },
  ["<Right>"] = { ":vertical resize +5<cr>", "resize - vertical" },
  ["<Up>"] = { ":resize +5<cr>", "resize - horizontal" },
  ["<Down>"] = { ":resize -5<cr>", "resize + horizontal" },
}

which_key.register(leader_mappings, opts)
which_key.register(control_mappings, opts)
which_key.register(shift_mappings, opts)
which_key.register(single_mappings, opts)
