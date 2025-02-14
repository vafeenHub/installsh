#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install -y snapd git g++ flameshot dconf-editor gnome-tweak-tool virtualbox gnome-terminal gnome-shell-extensions gnome-shell-extension-manager nemo

# Remove LibreOffice data
sudo apt remove libreoffice-data -y

# Install Flatpak
sudo apt install -y flatpak

# Install plugin for Flatpak support in Gnome Software
sudo apt install gnome-software-plugin-flatpak -y

# Install Snap and create symbolic link
sudo apt install snapd -y
sudo ln -s /var/lib/snapd/snap /snap

# Restart snapd service
sudo systemctl restart snapd.service

# Remove Yelp
sudo rm /bin/yelp 

echo "Debian setup completed!"
