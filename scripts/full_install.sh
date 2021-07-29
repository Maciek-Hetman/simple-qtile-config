#!/bin/sh

echo "Installing config, dependencies and base programs"

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
mkdir ~/.config/qtile/
cp config.py ~/.config/qtile/config.py
cp autostart.sh ~/.config/qtile/autostart.sh

echo "Setting wallpaper"
nitrogen john-towner-JgOeRuGD_Y4-unsplash.jpg

echo "Installing psutil"
pip install psutil

echo "Installing base programs"

echo "Installing yay"
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Installing firefox"
pacman -S firefox

echo "Installing remaining packages"
pacman -S atom unzip geany networkmanager neofetch fish

echo "Rebooting..."
sleep 2
reboot
