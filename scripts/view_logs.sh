#!/bin/bash

FILE="/tmp/docker-logs.txt"
nvim -R +":set updatetime=100" +":set autoread" +":set nowrap" +":set number" + "$FILE"
