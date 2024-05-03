#!/bin/bash 

sudo dnf upgrade --refresh

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge

sudo dnf install microsoft-edge-stable

microsoft-edge -version
