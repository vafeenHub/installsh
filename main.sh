#!/bin/bash

# Add Flathub repository (if not already added)
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install applications via Flatpak
flatpak install -y flathub com.microsoft.Edge
flatpak install -y net.nokyan.Resources
# flatpak install -y com.github.skylot.jadx


#cofig git
# git config --global user.name "Vafeen"
# git config --global user.email "666av6@gmail.com"
# git config --global init.defaultBranch main
# git config --global core.autocrlf false

# flameshot 
# chmod +x /home/a/MYSPACE/MyBin/flameshot.sh
# а также просто поставить на prtscr этот файл


