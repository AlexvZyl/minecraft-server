#!/bin/bash

FILE="$HOME/minecraft-server/data/logs/latest.log"
nvim -R +":set updatetime=100" +":set autoread" +":set nowrap" +":set number" + "$FILE"
