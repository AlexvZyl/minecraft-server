#!/bin/bash
./server/scripts/install.sh
sudo docker-compose -f server/docker-compose.yml build --dry-run
