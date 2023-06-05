#!/bin/bash

# Arch.
if command -v pacman &>/dev/null; then
    pacman -S docker docker-compose python3 git curl

# Debian.
elif command -v apt &>/dev/null; then
    sudo apt update && sudo apt upgrade
    sudo apt install docker docker-compose

else
    echo "Only Debian and Arch are supported."
    exit
fi

sudo systemctl enable docker && sudo systemctl start docker
