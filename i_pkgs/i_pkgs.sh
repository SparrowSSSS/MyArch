#!/usr/bin/env bash

ln -s /dev/null /etc/systemd/system-preset/99-default.preset

pkgs=$(cat ./pkgs.txt)

IFS=" " read -ra pkgs <<< "$pkgs"

for pkg in "${pkgs[@]}"; do 
  pacman -S "$pkg" --noconfirm
done

rm -rf /etc/systemd/system-preset/99-default.preset
