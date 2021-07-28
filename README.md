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
instead mod + space, and you can launch nautilus with mod + f (of course 
you change nautilus to your preffered file manager), mod + return now
launches alacritty. Mod key remains default(mod4/windows key).

## Installation ##
Clone this repository to ~/.config/qtile/ and restart qtile. 

## Dependencies ##
You need to have installed dmenu, qtile, python, python-pip, 
alacritty (or another terminal emulator, but change it in config.py before 
launching qtile), nautilus (or another file manager, you can change it in 
config.py file), alsa-utils (for volume widget, contains amixer)
Also run pip install psutil to make Net widget work.
