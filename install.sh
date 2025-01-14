#!/usr/bin/env bash

cp -r aurrepo /usr/local/share

cp -r etc/. /etc

bash i_pkgs/i_pkgs.sh

cp -r usr/. /usr

cp -r .config .themes $HOME/

cp -r system/. /etc/systemd/system/

mkinitcpio -P
