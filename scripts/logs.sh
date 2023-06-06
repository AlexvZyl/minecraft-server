#!/bin/bash

watch "sudo docker logs minecraft-server_minecraft-server_1 | tail -n $(($LINES - 30))"
