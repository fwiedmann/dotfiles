# Neovim configuration

Small Neovim 0.12 configuration built around native APIs and twelve plugins.

## Requirements

- Neovim 0.12.5
- Git and ripgrep
- `tree-sitter-cli` 0.26.1 or newer
- `lazygit`, for the LazyGit integration
- A Nerd Font selected in the terminal, for file icons
- Java, Go, and Node.js for the configured language servers

Mason installs the Java, Go, TypeScript/JavaScript, Terraform, TFLint, ESLint,
and Lua language servers.

## Layout

- `init.lua`: load order
- `lua/config/options.lua`: editor defaults
- `lua/config/packages.lua`: native `vim.pack` plugin list
- `lua/config/theme.lua`: Dracula/Alucard colorscheme with auto light/dark switching
- `lua/config/keymaps.lua`: general keymaps
- `lua/config/autocmds.lua`: built-in editor automation
- `lua/config/navigation.lua`: nvim-tree, Telescope, LazyGit, and file icons
- `lua/config/treesitter.lua`: parser list and highlighting
- `lua/config/lsp.lua`: Mason, LSP, completion, and formatting

## Keymaps

| Key | Action |
| --- | --- |
| `<leader>w` | Write buffer |
| `<leader>q` | Close buffer |
| `<leader>n` | Toggle file tree |
| `<leader>ff` | Find files |
| `<leader>fg` | Search text |
| `<leader>fb` | Find buffers |
| `<leader>lg` | Open LazyGit |
| `<S-h>` / `<S-l>` | Previous / next buffer |
| `<leader>bp` | Pick a buffer from the buffer line |
| `<leader>bc` | Close the current buffer |
| `<C-h/j/k/l>` | Focus left/lower/upper/right window |
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Show hover information |
| `<leader>la` | Code action |
| `<leader>ld` | Line diagnostics |
| `<leader>lf` | Format buffer |
| `<leader>lr` | Rename symbol |

The leader key is Space. Native LSP completion confirms the selected item with
`Ctrl-Y`.

## Maintenance

- Review and update plugins with `:packupdate`, then write the review buffer.
- Update Treesitter parsers with `:TSUpdate`.
- Inspect or change language-server packages with `:Mason`.
- Check the setup with `:checkhealth vim.lsp mason nvim-treesitter`.

To add a plugin, add its repository to `packages.lua`. To remove one, remove
its entry, restart, then run `:packdel <name>`.

To add or remove a language, update both the parser list in `treesitter.lua`
and the server list in `lsp.lua`. Add a preferred formatter there only when
that language should format on save.
