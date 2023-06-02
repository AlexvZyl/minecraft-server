#!/bin/bash

# Arch.
if command -v pacman &>/dev/null; then
    pacman -S docker docker-compose python3 git curl

# Debian.
elif command -v apt &>/dev/null; then
    # Setup repository
    sudo apt update && sudo apt upgrade
    sudo apt-get install ca-certificates curl gnupg

    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    echo \
        "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
        "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    # Install Docker Engine
    sudo apt update && sudo apt upgrade
    sudo apt install docker docker-compose
    sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

else
    exit
fi

sudo systemctl enable docker && sudo systemctl start docker
