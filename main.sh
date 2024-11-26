#!/bin/bash


# GNOME

# launguage in every window
gsettings set org.gnome.desktop.input-sources per-window true

# disable hot corners
gsettings set org.gnome.desktop.interface enable-hot-corners false

# 3 buttons window
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

# enable dark theme
gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark



#cofig git

git config --global user.name "Vafeen"
git config --global user.email "666av6@gmail.com"


# flameshot 
chmod +x /home/a/MYSPACE/MyBin/flameshot.sh
# а также просто поставить на prtscr этот файл