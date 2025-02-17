#!/bin/bash

# Update the system
sudo dnf update -y

# Install necessary packages
sudo dnf install snapd -y
sudo dnf install git -y
sudo dnf install gcc-c++ -y
sudo dnf install flameshot -y
sudo dnf install dconf-editor -y
sudo dnf install gnome-tweaks -y
sudo dnf install gnome-terminal -y
sudo dnf install nemo -y
sudo dnf install timeshift -y
sudo dnf install p7zip p7zip-plugins

# Remove LibreOffice data
sudo dnf remove libreoffice-data -y

# Install Flatpak
sudo dnf install flatpak -y

# Install plugin for Flatpak support in GNOME Software
sudo dnf install gnome-software-plugin-flatpak -y

# Install Snap and create symbolic link
sudo dnf install snapd -y
sudo ln -s /var/lib/snapd/snap /snap

# Start and enable snapd service
sudo systemctl enable --now snapd.socket

# Remove Yelp
sudo rm /usr/bin/yelp

echo "Fedora setup completed!"
