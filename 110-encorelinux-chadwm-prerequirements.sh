#!/bin/bash
#set -e
###############################################################################
# Author	:	Encore Linux
# Website	:	https://github.com/encorelinux
###############################################################################
#
#   Auto Installation Script - Required Packages for running Encore Linux Chadwm Fork
#
###############################################################################


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of the required packages for Encore Linux Chadwm"
###############################################################################

list=(
feh
rofi
picom
acpi
dash
imlib2
alacritty
dmenu
gvfs
feh
lxappearance
polkit-gnome
rxvt-unicode
sxhkd
thunar
thunar-volman
thunar-archive-plugin
file-roller
ttf-hack
volumeicon
xfce4-notifyd
xfce4-power-manager
xfce4-settings
xfce4-taskmanager
nano
vim
sublime-text-4
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
