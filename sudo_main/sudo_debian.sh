#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install -y snapd 
sudo apt install -y git 
# sudo apt install -y g++ 
sudo apt install -y virtualbox 

# All for GNOME 
# sudo apt install -y flameshot 
# sudo apt install -y dconf-editor gnome-tweak-tool 
# sudo apt install -y gnome-terminal 
# sudo apt install -y gnome-shell-extensions 
# sudo apt install -y gnome-shell-extension-manager
# sudo apt install -y nemo
# Install plugin for Flatpak support in Gnome Software
# sudo apt install gnome-software-plugin-flatpak -y

sudo apt install p7zip-full

# Install Flatpak
sudo apt install -y flatpak

# Install Obsidian via Snap
sudo snap install obsidian --classic
sudo snap install code --classic

sudo apt install qdirstat

sudo apt update
sudo apt install openjdk-17-jdk


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# # Install Snap and create symbolic link
# sudo apt install snapd -y
# sudo ln -s /var/lib/snapd/snap /snap

# Restart snapd service
# sudo systemctl restart snapd.service

# Remove Yelp
sudo rm /bin/yelp 

echo "Debian setup completed!"
