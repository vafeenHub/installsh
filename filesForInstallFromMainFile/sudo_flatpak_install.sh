#!/bin/bash

FLATPAKS=(
    # Edge
    com.microsoft.Edge
    # TG Desktop
    org.telegram.desktop
    # Jadx
    com.github.skylot.jadx
    #WhatsApp
    com.github.eneshecan.WhatsAppForLinux
    # Android-Studio
    com.google.AndroidStudio
    # pea7zip
    #io.github.peazip.PeaZip
    # resources
    net.nokyan.Resources
    # intellij idea
    com.jetbrains.IntelliJ-IDEA-Community
    # only Office
    org.onlyoffice.desktopeditors
)
for fltp in "${FLATPAKS[@]}"
do
    sudo flatpak install -y "$fltp"
done


sudo flatpak update
