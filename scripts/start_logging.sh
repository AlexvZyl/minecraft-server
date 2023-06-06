#!/bin/bash

FILE="/tmp/docker-logs.txt"
sudo docker logs -f minecraft-server_minecraft-server_1 > "$FILE" &
