#!/bin/bash
set -e

# repo for virtualbox
sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -P /etc/yum.repos.d/

DNFS=(
   snapd
   git
   g++
   flameshot
   dconf-editor
   wine
   gnome-tweak-tool
   VirtualBox-7.0
   playonlinux
   winetricks
)

for app in "${DNFS[@]}"
do
    sudo dnf install -y "$app"
done

sudo dnf remove libreoffice-data


sudo dnf upgrade 
