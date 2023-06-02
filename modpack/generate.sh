#!/bin/bash

MOD_FILE="No-Radars-Modrinth.mrpack"
CF_FILE="No-Radars-CurseForge.zip"

cd minecraft-modpack/modpack/packwiz || cd modpack/packwiz || cd packwiz || exit
packwiz modrinth export -o $MOD_FILE
packwiz curseforge export -o $CF_FILE

mv -f $MOD_FILE ../modrinth/
mv -f $CF_FILE ../curseforge/
