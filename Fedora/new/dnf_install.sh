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

FLATPAKS=(
# Edge 
 com.microsoft.Edge
# TG Desktop 
 org.telegram.desktop
# Jadx 
 com.github.skylot.jadx
#WhatsApp
com.github.eneshecan.WhatsAppForLinux
# Android-Studio
com.google.AndroidStudio
# pea7zip
io.github.peazip.PeaZip
# resources 
net.nokyan.Resources
) 
for fltp in "${FLATPAKS[@]}"
do
    sudo flatpak install -y "$fltp"
done



SNAPSclassic=(
    # VSCode 
    code
    obsidian
    intellij-idea-community
    whatsapp-for-linux
)
for snp in "${SNAPSclassic[@]}"
do
    sudo snap install "$snp" --classic
done

SNAPS=(
    #office
    onlyoffice-ds
    )
for snp in "${SNAPS[@]}"
do
    sudo snap install "$snp"
done

sudo dnf upgrade 
sudo flatpak update
