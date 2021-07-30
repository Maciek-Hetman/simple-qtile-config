#!/bin/sh

echo "Placing config files"
rm -rf ~/.config/qtile/*
cp ~/simple-qtile-config/config.py ~/.config/qtile/config.py
cp ~/simple-qtile-config/autostart.sh ~/.config/qtile/autostart.sh

echo "Placing wallpapers"
mkdir ~/Wallpapers
cp ~/simple-qtile-config/wallpapers/* ~/Wallpapers

echo "Setting up picom"
rm -rf ~/.config/picom
mkdir ~/.config/picom
cp ~/simple-qtile-config/PicomConfig/picom.conf ~/.config/picom/picom.conf

echo "Setting up alacritty"
rm -rf ~/.config/alacritty
mkdir ~/.config/alacritty
cp ~/simple-qtile-config/AlacrittyConfig/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "Setting up nitrogen"
nitrogen ~/Wallpapers

echo "Done, now you can hit ctrl + win + R to restart qtile"
