# Dotfiles

## Required software

- misspell: https://github.com/client9/misspell
- markdownlint: https://github.com/DavidAnson/markdownlint

## Disable LS Formatters

When two language servers trying to apply formatting neovim asks to chosse one.
To disbable an language server for formatting go to the [handlers](./nvim/lua/fwiedmann/lsp/handlers.lua).
In the on_attach method you can check for the specific client and disable the formattig:

```lua
  if client.name == "kotlin_language_server" then
    client.resolved_capabilities.document_formatting = false
  end
```
