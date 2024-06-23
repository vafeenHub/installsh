#!/bin/bash

# установка snap
sudo dnf install -y snapd

sudo ln -s /var/lib/snapd/snap /snap

sudo systemctl restart snapd.service
SNAPSclassic=(
    # VSCode
    code
    # Obsidian - .md notes 
    obsidian
    #Android Studio 
    android-studio
)
for snp in "${SNAPSclassic[@]}"
do
    sudo snap install "$snp" --classic
done

SNAPS=(
    p7zip-desktop
)
for snp in "${SNAPS[@]}"
do
    sudo snap install "$snp"
done

