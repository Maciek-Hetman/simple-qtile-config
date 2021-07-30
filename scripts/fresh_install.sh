#!/bin/sh
echo "Basic install"

echo "Installing $1"
if [ "$1" = gdm ]
then
  sudo pacman -S gdm
  sudo systemctl enable gdm
fi

if [ "$1" = lightdm ]
then
  sudo pacman -S lightdm
  sudo systemctl enable lightdm
fi

echo "Installing dependencies"
sudo pacman -S python python-pip qtile dmenu alacritty thunar alsa-utils gnome-screenshot xorg xorg-server nitrogen

echo "Setting up picom"
rm -rf ~/.config/picom
mkdir ~/.config/picom
cp ~/simple-qtile-config/PicomConfig/picom.conf ~/.config/picom/picom.conf

echo "Setting up alacritty"
rm -rf ~/.config/alacritty
mkdir ~/.config/alacritty
cp ~/simple-qtile-config/AlacrittyConfig/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "Installing psutil"
sudo pip install psutil
