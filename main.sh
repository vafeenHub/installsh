#!/bin/bash

cd ./filesForInstallFromMainFile/
# Определение команды для запуска
command_to_run() {
    if [[ "$1" == sudo* ]]; then
        echo "sudo bash $1"
        sudo bash ./"$1"
    else
        echo "bash $1"
        bash ./"$1"
    fi
}

# Запуск команды для каждого файла
for file in *; do
    if [ "$file" != "${0##*/}" ]; then
        command_to_run "$file"
    fi
done