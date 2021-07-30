# Simple qtile config #
This is slightly modified default qtile configuration with
nitrogen --restore in autostart, modified panel and dmenu

## Panel ##
Panel is now on top, slightly smaller with colored widgets on
right sider and some spacers

## Widgets ##
Left side is from default config - nothing changed. However left
side is pretty different - there are new colored widgets: Net, Volume,
Battery, Clock and QuickExit. QuickExit is now red and rest are now dark
or light blue

## Autostart ##
In autostart.sh you can modify programs, that launch on startup.
Now there is only nitrogen, which restores wallpaper.

## Dmenu ##
Dmenu hotkey is mod + space. If dmeny isn't showing results, you
should crear dmenu cache.

## Keybinds ##
They are mostly default, switching between windows is now mod + m
instead mod + space, and you can launch thunar with mod + f (of course
you change thunar to your preffered file manager), mod + return now
launches alacritty, mod + p to take screenshot. Mod key remains default(mod4/windows key).

## Dependencies ##
You need to have installed dmenu, qtile, python, python-pip,
alacritty (or another terminal emulator, but change it in config.py before
launching qtile), thunar (or another file manager, you can change it in
config.py file), alsa-utils (for volume widget, contains amixer),
gnome-screenshot, picom
Also run pip install psutil to make Net widget work.

# Installation #
There is now 3 sh files in scripts directory. fresh_install.sh and full_fresh_install.sh
are only for Arch based distros.

## Usage ##

### Install only config ###
Log in to qtile  
Hit <kbd>Win</kbd>+<kbd>Enter</kbd> to enter terminal  
Clone this repo  
```console
~$ git clone https://github.com/Maciek-Hetman/simple-qtile-config.git
~$ ./simple-qtile-config/scripts/first_boot.sh
```
Pick wallpaper in nitrogen  
Choose zoomed fill option and apply  
Hit <kbd>Win</kbd>+<kbd>W</kbd> to quit nitrogen  
Hit <kbd>Ctrl</kbd>+<kbd>Win</kbd>+<kbd>R</kbd> to restart qtile  
Done  

### Install config and dependencies ###
Open terminal  
Clone this repo  
```console
~$ git clone https://github.com/Maciek-Hetman/simple-qtile-config.git
~$ ./simple-qtile-config/scripts/fresh_install.sh
```
Enter qtile  
Hit <kbd>Win</kbd>+<kbd>Enter</kbd> to open terminal  
```console
~$ ./simple-qtile-config/scripts/first_boot.sh
```
Pick wallpaper in nitrogen  
Choose zoomed fill option and apply  
Hit <kbd>Win</kbd>+<kbd>W</kbd> to quit nitrogen  
Hit <kbd>Ctrl</kbd>+<kbd>Win</kbd>+<kbd>R</kbd> to restart qtile  
Done  

### Install config, dependencies and display manager ###
Clone this repo  
```console
~$ git clone https://github.com/Maciek-Hetman/simple-qtile-config.git
~$ ./simple-qtile-config/scripts/fresh_install.sh [display manager]
~$ reboot
```
Note: Now there is only gdm and lightdm support, lightdm didn't work for me in vm  
Choose qtile in display manager and log in  
Hit <kbd>Win</kbd>+<kbd>Enter</kbd> to open terminal
```console
~$ ./simple-qtile-config/scripts/first_boot.sh
```
Pick wallpaper in nitrogen  
Choose zoomed fill option and apply  
Hit <kbd>Win</kbd>+<kbd>W</kbd> to quit nitrogen  
Hit <kbd>Ctrl</kbd>+<kbd>Win</kbd>+<kbd>R</kbd> to restart qtile  
Done  

### Install config, dependencies, display managers, and some programs ###
Programs now include: firefox, yay, atom, unzip, geany, networkmanager, neofetch, fish, gwenview and base-devel  

Clone this repo  
```console
~$ git clone https://github.com/Maciek-Hetman/simple-qtile-config.git
~$ ./simple-qtile-config/scripts/full_fresh_install.sh [display manager]
~$ reboot
```
Note: Now there is only gdm and lightdm support, lightdm didn't work for me in vm  
Choose qtile in display manager and log in  
Hit <kbd>Win</kbd>+<kbd>Enter</kbd> to open terminal  
```console
~$ ./simple-qtile-config/scripts/first_boot.sh
```
Pick wallpaper in nitrogen  
Choose zoomed fill option and apply  
Hit <kbd>Win</kbd>+<kbd>W</kbd> to quit nitrogen  
Hit <kbd>Ctrl</kbd>+<kbd>Win</kbd>+<kbd>R</kbd> to restart qtile  
Done
