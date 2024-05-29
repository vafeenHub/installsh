#!/bin/bash

# RPM Fusion
sudo dnf install -y \
    "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
    "https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

sudo dnf update
sudo dnf upgrade 

#snap
sudo dnf install snapd

sudo dnf update

sudo dnf upgrade 

sudo ln -s /var/lib/snapd/snap /

sudo systemctl restart snapd.service
#VSCODE
snap install code --classic

#Android studio
snap install android-studio --classic

sudo dnf-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

#Obsidian
snap install obsidian --classic

#TG
snap install telegram-desktop

#Intellij idea
snap install intellij-idea-community --classic

#Git
dnf install git 

#file manager 
dnf remove -y nautilus

dnf install nemo

# edge-dev 
#sudo dnf install curl

#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

#sudo install -o root -g root -m 644 microsoft.gpg /etc/dnf/trusted.gpg.d/

#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/dnf/sources.list.d/microsoft-edge-dev.list'

#sudo rm microsoft.gpg && sudo dnf upgrade && sudo dnf update &&  && sudo dnf install microsoft-edge-dev

#edge stable 
#sudo dnf install curl
# curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
# sudo install -o root -g root -m 644 microsoft.gpg /etc/dnf/trusted.gpg.d/
# sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/dnf/sources.list.d/microsoft-edge-dev.list'
# sudo rm microsoft.gpg && sudo dnf update -y && sudo dnf install microsoft-edge-stable

#dconf
sudo dnf install dconf-editor

sudo dnf autoremove -y 


# Vivaldi 

wget https://downloads.vivaldi.com/stable/vivaldi-stable_amd64.deb

sudo dpkg -i vivaldi-stable_amd64.deb

sudo rm -R vivaldi-stable_amd64.deb

# Wine 

sudo dnf -y install wine


#g++
sudo dnf update

sudo dnf install g++

#office 
sudo dnf install playonlinux

sudo dnf install winetricks winbind

sudo snap install onlyoffice-desktopeditors


#vbox
#sudo dnf -y install @development-tools
#sudo dnf install kernel-headers kernel-devel dkms -y
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc
#sudo rpm --import oracle_vbox.asc

#sudo vi /etc/yum.repos.d/virtualbox.repo
# [VirtualBox]
#name=Fedora $releasever - $basearch - VirtualBox
#baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/#$releasever/$basearch
#enabled=1
#gpgcheck=1
#repo_gpgcheck=1
#gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc

#sudo dnf search virtualbox
sudo dnf install VirtualBox


# редактор 
sudo dnf install gnome-tweak-tool

# архиватор 
sudo yum install p7zip p7zip-plugins
 
#WhatsApp
sudo snap install whatsapp-for-linux

# мониторинг ресурсов 
flatpak install flathub net.nokyan.Resources

