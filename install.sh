#!/usr/bin/env bash

export DIR=/skel

waybar_dir="~/.config/waybar"

cp -r aurrepo /usr/local/share

cp -r etc/. /etc

bash i_pkgs/i_pkgs.sh

cp -r system/. /etc/systemd/system

cp -r usr/. /usr

cp -r .config .themes scripts ~/

chmod +x ~/scripts/* $waybar_dir/Waybar-3.0/playerctl.sh $waybar_dir/scripts/*

mkinitcpio -P
