#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install -y snapd git g++ flameshot dconf-editor gnome-tweak-tool virtualbox gnome-terminal gnome-shell-extensions gnome-shell-extension-manager nemo

sudo apt install p7zip-full

# Install Flatpak
sudo apt install -y flatpak

# Install plugin for Flatpak support in Gnome Software
sudo apt install gnome-software-plugin-flatpak -y

# Install Obsidian via Snap
sudo snap install obsidian --classic
sudo snap install code --classic

sudo apt install qdirstat

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


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
