# Dotfiles

## Required software

- [misspell](https://github.com/client9/misspell)
- [markdownlint](https://github.com/DavidAnson/markdownlint)
- [eslint_d](https://github.com/mantoni/eslint_d.js/)
- [revive](https://revive.run/)

## Terminal emulator

- [Ghostty](https://ghostty.org/) with the Alucard theme in `ghostty/themes/Alucard`
- [oh-my-ZSH](https://ohmyz.sh/)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
- [JetBrainsMono Nerd Font Mono Regular](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)

## pi agent

Tracked under `pi/agent/`: settings, themes, zentui, skills, and `npm/package.json`.
`backup.sh` copies from `~/.pi/agent`. `bootstrap.sh` copies back.
Sessions, `auth.json`, and `npm/node_modules` stay local.

## Neovim

See [nvim/README.md](./nvim/README.md).

## Brew

Install from the Brewfile:

```bash
brew bundle
```

`backup.sh` does not regenerate the Brewfile. Edit it when you add or drop packages.
