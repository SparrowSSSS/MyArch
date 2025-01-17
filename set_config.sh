#!/usr/bin/env bash

waybar_dir="~/.config/waybar"

cp -r .config .themes scripts ~/

chmod +x ~/scripts/* $waybar_dir/Waybar-3.0/playerctl.sh $waybar_dir/scripts/*
