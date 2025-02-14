#!/bin/bash

# Update the system
sudo pacman -Syu

# Install necessary packages
sudo pacman -Sy --needed git gcc flameshot dconf-editor gnome-tweaks gnome-terminal nemo

sudo pacman -Sy  gnome-shell-extensions
sudo pacman -Sy gnome-browser-connector

# Install Flatpak
sudo pacman -Sy --needed flatpak

# Remove Yelp (if installed)
sudo rm /bin/yelp 

echo "Arch setup completed!"
