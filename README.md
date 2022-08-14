# Dotfiles

## Required software

- [misspell](https://github.com/client9/misspell)
- [markdownlint](https://github.com/DavidAnson/markdownlint)
- [eslint_d](https://github.com/mantoni/eslint_d.js/)
- [revive](https://revive.run/)

## Disable LS Formatters

When two language servers trying to apply formatting neovim asks to chosse one.
To disbable a language server for formatting go to the [handlers](./nvim/lua/fwiedmann/lsp/handlers.lua).
In the on_attach method you can check for the specific client and disable the formattig:

```lua
if client.name == "kotlin_language_server" then
client.resolved_capabilities.document_formatting = false
end
```

If the language server itselfs porivdes the ability to disable formatting, create a custom setting in the [settings folder](./nvim/lua/fwiedmann/lsp/settings) and update the options for the server [here](.nvim/lua/fwiedmann/lsp/lsp-installer.lua).
