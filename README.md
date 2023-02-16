# Autoinstallation Scripts for a fresh Arch Linux System
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
## Using the installations scripts
- If you are in the autoinstall directoy you just have to execute the scripts one by one to get the packages installed:
```sudo bash 100-archlinux-post-install.sh```
Packages that are being installed:<br>
- xorg
- xorg-xinit
