#!/bin/bash

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
    gnome-tweak-tool
    VirtualBox-7.0
)


for app in "${DNFS[@]}"
do
    sudo dnf install -y "$app"
done

sudo dnf remove libreoffice-data

sudo dnf upgrade