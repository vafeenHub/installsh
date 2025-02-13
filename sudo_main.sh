#!/bin/bash

# Установка необходимых пакетов
sudo apt install snapd
sudo apt install git
sudo apt install g++
sudo apt install flameshot
sudo apt install dconf-editor
sudo apt install gnome-tweak-tool
sudo apt install VirtualBox-7.1
sudo apt install gnome-terminal
sudo apt install gnome-shell-extensions 
sudo apt install gnome-shell-extension-manager
sudo apt install nemo

# Удаление LibreOffice данных
sudo apt remove libreoffice-data

# Обновление системы
sudo apt update
sudo apt upgrade

# Установка Flatpak в Ubuntu
sudo apt install flatpak

# Подключение репозитория Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Установка плагина для поддержки Flatpak в центре приложений (Gnome Software)
sudo apt install gnome-software-plugin-flatpak

sudo flatpak install flathub 

# Установка приложений через Flatpak
sudo flatpak install -y com.microsoft.Edge
sudo flatpak install -y com.github.skylot.jadx
sudo flatpak install -y net.nokyan.Resources
sudo flatpak install -y org.onlyoffice.desktopeditors
sudo flatpak install -y com.brave.Browser

# Установка snap и создание символической ссылки
sudo apt install -y snapd
sudo ln -s /var/lib/snapd/snap /snap

# Перезапуск службы snapd
sudo systemctl restart snapd.service

sudo snap install code --classic
sudo snap install obsidian --classic
sudo snap inst

sudo rm /bin/yelp 