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
sudo pacman -S python python-pip qtile dmenu alacritty thunar alsa-utils gnome-screenshot xorg xorg-server nitrogen picom

echo "Installing psutil"
pip install psutil

echo "Installing yay"
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Installing remaining packages"
sudo pacman -S atom unzip geany networkmanager neofetch fish htop firefox net-tools gwenview
yay -S yp-tools

echo "Setting fish as default shell..."
chsh -s `which fish`
