#!/usr/bin/env bash

pkgs=$(cat i_pkgs/pkgs.txt)

pacman -Sy

IFS=" " read -ra pkgs <<< "$pkgs"
for pkg in "${pkgs[@]}"; do 
  pacman -S "$pkg" --noconfirm
done

pacman -S linux-headers 
