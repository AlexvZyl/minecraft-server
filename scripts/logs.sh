#!/bin/bash

FILE="/tmp/docker-logs.txt"
docker logs -f --tail 1000 minecraft-server_minecraft-server_1 2>&1 > "$FILE" &
nvim -R +":set autoread" +":set nowrap" + "$FILE"
