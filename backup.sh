#!/bin/bash

set -e
cp ~/.zshrc .
cp ~/.p10k.zsh .
cp ~/.env .

mkdir -p ghostty/themes
if [ -f "$HOME/.config/ghostty/config" ]; then
  cp "$HOME/.config/ghostty/config" ghostty/config
fi
if [ -d "$HOME/.config/ghostty/themes" ]; then
  cp -R "$HOME/.config/ghostty/themes/." ghostty/themes/
fi

mkdir -p pi/agent/themes pi/agent/skills pi/agent/npm
cp "$HOME/.pi/agent/settings.json" pi/agent/settings.json
cp "$HOME/.pi/agent/AGENTS.md" pi/agent/AGENTS.md
cp "$HOME/.pi/agent/zentui.json" pi/agent/zentui.json
cp "$HOME/.pi/agent/npm/package.json" pi/agent/npm/package.json
cp -R "$HOME/.pi/agent/themes/." pi/agent/themes/
cp -R "$HOME/.pi/agent/skills/." pi/agent/skills/
