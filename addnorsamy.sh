#!/bin/bash

ssh-keygen -t ed25519 -C "666av6@gmail.com"

cat << EOF >> ~/.ssh/config
Host github.com
    HostName github.com
    User 666av6@gmail.com
    IdentityFile /home/a/.ssh/id_ed25519
EOF
cat << EOF >> ~/.ssh/config
Host gtiflic.ru
    HostName gitflic.ru
    User 666av6@gmail.com
    IdentityFile /home/a/.ssh/id_ed25519
EOF

cat ~/.ssh/id_ed25519.pub


ssh-keyscan github.com >> ~/.ssh/known_hosts
ssh-keyscan gitflic.ru >> ~/.ssh/known_hosts