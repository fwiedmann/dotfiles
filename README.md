# Dotfiles

## Required software

- [misspell](https://github.com/client9/misspell)
- [markdownlint](https://github.com/DavidAnson/markdownlint)
- [eslint_d](https://github.com/mantoni/eslint_d.js/)
- [revive](https://revive.run/)

## Terminal Emulator

- [kitty](https://sw.kovidgoyal.net/kitty/)
- [oh-my-ZSH](https://ohmyz.sh/)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
- [dracula theme](https://draculatheme.com/)
- [JetBrainsMono Nerd Font Mono Regular](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)

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

## Brew

Install required software with the brew package manager + the [bundle](https://github.com/homebrew/homebrew-bundle) extension:

```Bash
brew bundle
```
