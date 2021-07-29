#!/bin/sh

echo "Removing fish_greeting"
rm -rf ~/.config/fish/config.fish
cp ~/simple-qtile-config/FishConfigs/config.fish ~/.config/fish/config.fish
mkdir ~/.config/fish/functions
cp ~/simple-qtile-config/FishConfigs/fish_greeting.fish ~/.config/fish/functions/fish_greeting.fish

echo "Installing omf"
curl -L https://get.oh-my.fish | fish
