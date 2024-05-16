#!/usr/bin/env bash
# xorg display server installation
sudo apt install -y xorg xserver-xorg xbacklight xinput 

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential
 
# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

#Install bspwm and polybar
sudo apt install -y bspwm suckless-tools sxhkd polybar

mkdir -p ~/.config
cp -r /bspwm-base/config* /$HOME/.config
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc
chmod +x $HOME/.config/polybar/launch.sh

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y network-manager network-manager-gnome

# file manager Thunar ranger  
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller ranger

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

# Others
sudo apt install -y numlockx udns-utils whois curl 

# Dependencies for Ly Console Manager
sudo apt install -y libpam0g-dev libxcb-xkb-dev

# Install Ly Console Display Manager
cd 
cd Downloads
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly/
make
sudo make install installsystemd
sudo systemctl enable ly.service

cp /bspwm-base/.bashrc /$HOME

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
