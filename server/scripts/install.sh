#!/bin/bash
./server/scripts/dependencies.sh
sudo docker-compose -f server/docker-compose.yml up -d
