#!/usr/bin/env bash

if [ -n "$(pidof nwg-dock-hyprland)" ]; then
  nwg-dock-hyprland
fi
