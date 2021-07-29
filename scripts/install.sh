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
sudo pacman -S python python-pip qtile dmenu alacritty nautilus alsa-utils gnome-screenshot xorg xorg-server nitrogen

echo "Placing config files"
cd ..
rm -rf ~/.config/qtile/
mkdir ~/.config/qtile/
cp config.py ~/.config/qtile/
cp autostart.sh ~/.config/qtile

echo "Setting wallpaper"
nitrogen scripts/john-towner-JgOeRuGD_Y4-unsplash.jpg

echo "Installing psutil"
pip install psutil

echo "Rebooting..."
sleep 2
reboot
