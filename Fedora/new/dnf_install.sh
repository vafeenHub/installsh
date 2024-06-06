#!/bin/bash
set -e

DNFS=(
   snapd
   git
   g++
   flameshot
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
# VSCode 
com.visualstudio.code
) 
for fltp in "${FLATPAKS[@]}"
do
    sudo flatpak install -y "$fltp"
done


SNAPS=(
p7zip-desktop
)
for snp in "${SNAPS[@]}"
do
    sudo snap install "$snp"
done

