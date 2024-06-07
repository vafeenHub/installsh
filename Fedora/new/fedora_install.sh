#!/bin/bash


sudo ln -s /var/lib/snapd/snap /snap

SNAPSclassic=(
    # VSCode 
    code
    obsidian
    android-studio
)
for snp in "${SNAPSclassic[@]}"
do
    sudo snap install "$snp" --classic
done

SNAPS=(
    p7zip-desktop
    )
for snp in "${SNAPS[@]}"
do
    sudo snap install "$snp"
done


set -e

# repo for virtualbox
sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -P /etc/yum.repos.d/

# repo for code 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

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
   nemo
   code
)

for app in "${DNFS[@]}"
do
    sudo dnf install -y "$app"
done

sudo dnf remove libreoffice-data


sudo dnf upgrade 

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
#io.github.peazip.PeaZip
# resources 
net.nokyan.Resources
# intellij idea
com.jetbrains.IntelliJ-IDEA-Community
# only Office 
org.onlyoffice.desktopeditors
) 
for fltp in "${FLATPAKS[@]}"
do
    sudo flatpak install -y "$fltp"
done


sudo flatpak update

# enable dark theme 
gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark
