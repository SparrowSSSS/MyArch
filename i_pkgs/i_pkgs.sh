#!/usr/bin/env bash

mkdir /etc/systemd/system-preset
ln -s /dev/null /etc/systemd/system-preset/99-default.preset

pkgs=$(cat i_pkgs/pkgs.txt)

pacman -Sy

IFS=" " read -ra pkgs <<< "$pkgs"
for pkg in "${pkgs[@]}"; do 
  pacman -S "$pkg" --noconfirm
done

pacman -S linux-headers 

rm -rf /etc/systemd/system-preset/99-default.preset
