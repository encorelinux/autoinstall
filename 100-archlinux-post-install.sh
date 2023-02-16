#!/bin/bash
#set -e
###############################################################################
# Author	:	Encore Linux
# Website	:	https://github.com/encorelinux
###############################################################################
#
#   Auto Installation Script - Archlinux Post Install
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
echo "Installation of the required packages for Arch Linux"
###############################################################################

list=(
xorg
xorg-xinit
xterm
bluez
bluez-utils
blueman
pulseaudio
pulseaudio-bluetooth
pulseaudio-alsa
pavucontrol
alsa-utils
alsa-plugins
alsa-lib
alsa-firmware
volumeicon
playerctl
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
echo "Software has been installed - DO NOT FORGET TO ENABLE BLUETOOTH SERVICES!!!"
echo "################################################################"
echo;tput sgr0
