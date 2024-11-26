#!/bin/bash





sudo dnf install    snapd
sudo dnf install    git
sudo dnf install    g++
sudo dnf install   flameshot
sudo dnf install   dconf-editor
sudo dnf install   gnome-tweak-tool
sudo dnf install  VirtualBox-7.1
sudo dnf install gnome-terminal

sudo dnf remove libreoffice-data

sudo dnf upgrade


sudo flatpak install -y com.microsoft.Edge
sudo flatpak install -y com.github.skylot.jadx
sudo flatpak install -y net.nokyan.Resources
sudo flatpak install -y org.onlyoffice.desktopeditors
sudo flatpak install -y com.brave.Browser
# установка snap
sudo dnf install -y snapd

sudo ln -s /var/lib/snapd/snap /snap

sudo systemctl restart snapd.service
# VSCode
sudo snap install   code --classic
# Obsidian - .md notes
sudo snap install  obsidian --classic
# p7zip
sudo snap install p7zip-desktop






# other

#remove yelp
sudo rm /usr/bin/yelp


