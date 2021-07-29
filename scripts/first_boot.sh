#!/bin/sh

echo "Placing config files"
rm -rf ~/.config/qtile/*
cp ~/simple-qtile-config/config.py
cp ~/simple-qtile-config/autostart.sh

echo "Placing wallpapers"
mkdir ~/Wallpapers
cp ~/simple-qtile-config/wallpapers/* ~/Wallpapers

echo "Setting up nitrogen"
nitrogen ~/Wallpapers

echo "Done, now you can hit ctrl + win + R to restart qtile"
