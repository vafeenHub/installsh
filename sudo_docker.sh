#!/bin/bash

# Обновление системы
sudo apt update
sudo apt upgrade -y

# Установка зависимостей
sudo apt install -y \
    ca-certificates \
    curl \
    software-properties-common \
    gnupg \
    lsb-release

# Очистка старых ключей Docker (если есть)
sudo rm -f /etc/apt/keyrings/docker.gpg
sudo rm -f /etc/apt/sources.list.d/docker.list

# Добавление официального GPG-ключа Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Добавление репозитория Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Обновление пакетов
sudo apt update

# Установка Docker
sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

# Настройка Docker
sudo systemctl start docker
# sudo systemctl enable docker

# Добавление пользователя в группу docker
sudo groupadd docker 2>/dev/null || true
sudo usermod -aG docker $USER

# Проверка установки
echo "=== Проверка установки ==="
docker --version
docker compose version

echo ""
echo "Установка завершена!"
echo "Чтобы применить изменения группы, выполните:"
echo "newgrp docker"
echo "или перезайдите в систему"
echo ""
echo "Проверка работы: docker run hello-world"