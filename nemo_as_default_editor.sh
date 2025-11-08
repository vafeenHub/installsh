#!/bin/bash


# Отключение отображения значков рабочего стола Nautilus (во избежание конфликта)
gsettings set org.gnome.desktop.background show-desktop-icons false

# (Опционально) Включение значков рабочего стола в Nemo — НЕ рекомендуется в GNOME ≥ 40 из-за нестабильности
gsettings set org.nemo.desktop show-desktop-icons true

# Назначение Nemo обработчиком по умолчанию для папок
xdg-mime default nemo.desktop inode/directory application/x-directory

# Проверка: следующая команда должна открыть домашнюю папку в Nemo
# xdg-open $HOME

# Примечание: для применения всех изменений может потребоваться выход из сеанса и повторный вход