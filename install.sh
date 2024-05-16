#!/usr/bin/env bash
# xorg display server installation
sudo apt install -y xorg xserver-xorg xinput 

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential
 
# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

#Install bspwm and polybar
sudo apt install -y bspwm suckless-tools sxhkd polybar

mkdir -p ~/.config
cd bspwm-base/config
cp bspwm /$HOME/.config
cp polybar /$HOME/.config
chmod +x $HOME/.config/polybar/launch.sh
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc
# Networking etc
sudo apt install -y network-manager

#Terminal install
sudo apt install -y alacritty

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol pamixer

# Neofetch
sudo apt install -y neofetch

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

#Multimedia
sudo apt install -y vlc eog 

#Resolucion
sudo apt install -y arandr
#other
sudo apt install -y curl 

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
