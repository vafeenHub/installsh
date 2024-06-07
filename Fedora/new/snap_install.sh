#!/bin/bash

sudo ln -s /var/lib/snapd/snap /snap

SNAPSclassic=(
    # VSCode 
    code
    obsidian
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

