#!/bin/sh


echo "Basic install with display manager"

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
sudo pacman -S python python-pip qtile dmenu alacritty nautilus alsa-utils gnome-screenshot xorg xorg-server nitrogen

echo "Placing config files"
rm -rf ~/.config/qtile/
mkdir ~/.config/qtil
cp config.py ~/.config/qtile
cp autostart.sh ~/.config/qtile

echo "Installing psutil"
pip install psutil


echo "Rebooting..."
reboot
