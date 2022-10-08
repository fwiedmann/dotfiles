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

When two language servers trying to apply formatting neovim asks to choose one.
To disable a language server for formatting go to the [handlers](./nvim/lua/fwiedmann/lsp/handlers.lua).
In the on_attach method you can check for the specific client and disable the formatting:

```lua
if client.name == "kotlin_language_server" then
client.resolved_capabilities.document_formatting = false
end
```

If the language server itself provides the ability to disable formatting, create a custom setting in the [settings folder](./nvim/lua/fwiedmann/lsp/settings) and update the options for the server [here](.nvim/lua/fwiedmann/lsp/lsp-installer.lua).

## LSP Servers

### Java

The java lsp server requires three additional dependencies in order to run debugging and tests.

Clone the two following repos, follow the build instructions and update the `nvim/ftplugin/java.lua` references.

[java debugger](https://github.com/microsoft/java-debug):

```bash
cd $HOME/git/github.com/microsoft/
git clone git@github.com:microsoft/java-debug.git
cd java-debug
./mvnw clean install
```

[java test](https://github.com/microsoft/vscode-java-test):

```bash
cd $HOME/git/github.com/microsoft/
git clone git@github.com:microsoft/vscode-java-test.git
cd vscode-java-test
npm i
npm run build-plugin
```

[Lombok](https://projectlombok.org/):

```bash
mkdir -pv $HOME/.local/share/java
sudo wget https://projectlombok.org/downloads/lombok.jar -O $HOME/.local/share/java/lombok.jar
```

Also use [google-java-format](https://github.com/google/google-java-format) for standard formatting.

## Brew

Install required software with the brew package manager + the [bundle](https://github.com/homebrew/homebrew-bundle) extension:

```Bash
brew bundle
```
