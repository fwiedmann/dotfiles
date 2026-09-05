local function set_cursor_highlight(foreground, background)
  vim.api.nvim_set_hl(0, "Cursor", { fg = foreground, bg = background })
end

local function set_dark_mode()
  vim.opt.background = "dark"
  vim.cmd.colorscheme("dracula")
  set_cursor_highlight("#000000", "#ffffff")
end

local function set_light_mode()
  vim.opt.background = "light"
  vim.cmd.colorscheme("alucard")
  set_cursor_highlight("#ffffff", "#000000")
end

set_dark_mode()
vim.opt.guicursor = "n-v-c:block-Cursor,i:ver25-Cursor,r:hor20-Cursor"

require("auto-dark-mode").setup({
  fallback = "dark",
  set_dark_mode = set_dark_mode,
  set_light_mode = set_light_mode,
  update_interval = 300000,
})
