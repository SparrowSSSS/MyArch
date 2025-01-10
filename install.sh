#!/usr/bin/env bash

cp -r aurrepo /usr/local/share

cp -r etc/. /etc

bash i_pkgs/i_pkgs.sh

cp -r sddm icons /usr/share

cp .config .themes $HOME/

mkinitcpio -P
