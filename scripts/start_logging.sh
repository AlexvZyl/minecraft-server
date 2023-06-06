#!/bin/bash

FILE="/tmp/docker-logs.txt"
sudo docker logs -f --tail 1000 minecraft-server_minecraft-server_1 > "$FILE" &
