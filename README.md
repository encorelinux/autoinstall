# Automatic Post-Install Scripts for Arch Linux
These are the scripts I use for installing the software and programs I need. They are specific designed for my needs. Feel free to adjust them as you see fit for your system. They take a lot of work off of you and give you a full system in no time.<br><br>
## Requirements
- Fresh Arch Linux installation
- Intel/AMD Microcodes <i>```sudo pacman -S intel-ucode```</i>
- Linux Headers <i>```sudo pacman -S linux-headers```</i>
- base-devel <i>```sudo pacman -S base-devel```</i>
- git <i>```sudo pacman -S git```</i>
- GPU Drivers (if necessary) <i>```sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings```</i>
## Getting the installation scripts
- Boot into your fresh installed Arch Linux System and enter your login name and password.
- To get the scripts onto your system simply use git clone:<br>
```git clone https://github.com/encorelinux/autoinstall```<br>
```cd autoinstall```
## Install 100-archlinux-post-install.sh
This package installs the X11 display server and support for audio and bluetooth. I am using Pulseaudio and Blueman as man bluetooth manager. If you prefer something else, you just need to change it in the script before executing it.<br><br>From within the autoinstall directory execute the following command:<br><br>
```sudo bash 100-archlinux-post-install.sh```<br><br>
Packages that are being installed:<br>
```- xorg
- xorg-xinit
- xterm
- bluez
- bluez-utils
- blueman
- pulseaudio
- pulseaudio-bluetooth
- pulseaudio-alsa
- pavucontrol
- alsa-utils
- alsa-plugins
- alsa-lib
- alsa-firmware
- volumeicom
- playerctl
```
To get bluetooth activated after installing the packages make sure you execute the following command:<br>
```sudo systemctl enable bluetooth.service```
