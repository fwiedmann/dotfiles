local gitsigns_ok, gitsigns = pcall(require, "nvim-autopairs")
if not gitsigns_ok then
  return
end

gitsigns.setup()
