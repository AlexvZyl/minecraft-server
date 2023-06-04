#!/bin/bash

watch "sudo docker logs server_minecraft-server_1 | tail -n $(($LINES - 10))"
