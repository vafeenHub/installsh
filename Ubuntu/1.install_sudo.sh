#!/bin/sh

sudo apt update
sudo apt upgrade 

#snap
sudo apt install snapd

sudo apt update

sudo apt upgrade 

sudo ln -s /var/lib/snapd/snap /


sudo systemctl restart snapd.service
#VSCODE
snap install code --classic

#Android studio
snap install android-studio --classic

sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

#Obsidian
snap install obsidian --classic

#TG
snap install telegram-desktop

#Intellij idea
snap install intellij-idea-community --classic

#Git
apt install git 

#file manager 
apt remove -y nautilus

apt install nemo

# edge-dev 
#sudo apt install curl

#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

#sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'

#sudo rm microsoft.gpg && sudo apt upgrade && sudo apt update &&  && sudo apt install microsoft-edge-dev

#edge stable 
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -y -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg && sudo apt update -y && sudo apt install microsoft-edge-stable


# virtual-box

sudo apt install virtualbox

#dconf
sudo apt install dconf-editor

sudo apt autoremove -y 


# Vivaldi 

wget https://downloads.vivaldi.com/stable/vivaldi-stable_amd64.deb

sudo dpkg -i vivaldi-stable_amd64.deb

sudo rm -R vivaldi-stable_amd64.deb

# Wine 

sudo apt -y install wine


#g++
sudo apt update

sudo apt install g++

#office 
sudo apt install playonlinux

sudo apt install winetricks winbind

sudo snap install onlyoffice-desktopeditors


# tweaks
sudo dnf install gnome-tweak-tool
gnome-tweaks


#WhatsApp
sudo snap install whatsapp-for-linux
