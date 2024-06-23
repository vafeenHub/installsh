#!/bin/bash 

ssh-keygen -t rsa -b 4096 -C "666av6@gmail.com"

cat << EOF >> ~/.ssh/config
Host github.com
    User 666av6@gmail.com
    IdentityFile /home/a/.ssh/id_rsa
EOF

cat ~/.ssh/id_rsa.pub
