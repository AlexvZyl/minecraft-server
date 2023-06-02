#!/bin/bash
./server/dependencies.sh
sudo docker-compose -f server/docker-compose.yml build
