#!/usr/bin/env bash

mkdir /etc/systemd/system-preset
ln -s /dev/null /etc/systemd/system-preset/99-default.preset

pkgs=$(cat i_pkgs/pkgs.txt)

IFS=" " read -ra pkgs <<< "$pkgs"
for pkg in "${pkgs[@]}"; do 
  pacman -Sy "$pkg" --noconfirm
done

rm -rf /etc/systemd/system-preset/99-default.preset
