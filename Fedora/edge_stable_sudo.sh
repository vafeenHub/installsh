#!/bin/bash

cd ~/Downloads
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_110.0.1587.41-1_amd64.deb?brand=M102
sudo apt install ./microsoft-edge-stable_110.0.1587.41-1_amd64.deb
sudo apt update
sudo apt install flatpak  
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.microsoft.Edge
flatpak run com.microsoft.Edge
