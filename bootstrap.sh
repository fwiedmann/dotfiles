#!/bin/bash

set -e

rm -rf $HOME/.config/nvim
cp -r nvim $HOME/.config/

cp ./.fwiedmann.omp.json $HOME/

mkdir -p "$HOME/.config/ghostty/themes"
cp ghostty/config "$HOME/.config/ghostty/config"
cp -R ghostty/themes/. "$HOME/.config/ghostty/themes/"

mkdir -p "$HOME/.pi/agent/themes" "$HOME/.pi/agent/skills" "$HOME/.pi/agent/npm"
cp pi/agent/settings.json "$HOME/.pi/agent/settings.json"
cp pi/agent/AGENTS.md "$HOME/.pi/agent/AGENTS.md"
cp pi/agent/zentui.json "$HOME/.pi/agent/zentui.json"
cp pi/agent/npm/package.json "$HOME/.pi/agent/npm/package.json"
cp -R pi/agent/themes/. "$HOME/.pi/agent/themes/"
cp -R pi/agent/skills/. "$HOME/.pi/agent/skills/"
