#!/bin/bash

mkdir "$HOME/Desktop"
mkdir "$HOME/Downloads"
mkdir "$HOME/Templates"
mkdir "$HOME/Public"
mkdir "$HOME/Documents"
mkdir "$HOME/Music"
mkdir "$HOME/Pictures"
mkdir "$HOME/Videos"

mv "$HOME/Рабочий стол/*" "$HOME/Desktop/"
mv "$HOME/Загрузки/*" "$HOME/Downloads/"
mv "$HOME/Шаблоны/*" "$HOME/Templates/"
mv "$HOME/Общедоступные/*" "$HOME/Public/"
mv "$HOME/Документы/*" "$HOME/Documents/"
mv "$HOME/Музыка/*" "$HOME/Music/"
mv "$HOME/Изображения/*" "$HOME/Pictures/"
mv "$HOME/Видео/*" "$HOME/Videos/"

rmdir "$HOME/Рабочий стол/" 
rmdir "$HOME/Загрузки/" 
rmdir "$HOME/Шаблоны/"
rmdir "$HOME/Общедоступные/"
rmdir "$HOME/Документы/"
rmdir "$HOME/Музыка/"
rmdir "$HOME/Изображения/" 
rmdir "$HOME/Видео/" 

cat << EOF > ~/.config/user-dirs.dirs
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_TEMPLATES_DIR="$HOME/Templates"
XDG_PUBLICSHARE_DIR="$HOME/Public"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/Pictures"
XDG_VIDEOS_DIR="$HOME/Videos"

EOF

code ~/.config/user-dirs.dirs