#!/bin/bash

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo ln -Sy /var/lib/snapd/snap /snap
sudo systemctl enable --now snapd.socket