#!/bin/bash

# Update the system
sudo dnf update

# Install necessary packages
sudo dnf install snapd git gcc-c++ flameshot dconf-editor gnome-tweaks gnome-terminal gnome-shell-extensions gnome-shell-extension-manager nemo timeshift

# Remove LibreOffice data
sudo dnf remove libreoffice-common -y

# Install Flatpak
sudo dnf install flatpak

# Install plugin for Flatpak support in GNOME Software
sudo dnf install gnome-software-plugin-flatpak

# Install Snap and create symbolic link
sudo dnf install snapd -y
sudo ln -s /var/lib/snapd/snap /snap

# Start and enable snapd service
sudo systemctl enable --now snapd.socket

# Remove Yelp
sudo rm /usr/bin/yelp

echo "Fedora setup completed!"
