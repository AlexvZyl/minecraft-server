#!/bin/bash

sudo docker logs --tail 1000 minecraft-server_minecraft-server_1 2>&1 | nvim -R - --cmd ":set nowrap" +
