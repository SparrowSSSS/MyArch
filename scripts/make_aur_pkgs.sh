#!/usr/bin/env bash

aur_pkgs=$(pacman -Qmq)

while IFS= read -r pkg
do
  git clone "https://aur.archlinux.org/$pkg.git" "$HOME/aur/$pkg"
  cd "$HOME/aur/$pkg"
  makepkg
done <<< "$aur_pkgs"
