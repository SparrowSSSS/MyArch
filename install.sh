#!/usr/bin/env bash

cp -r aurrepo /usr/local/share

cp -r etc/. /etc

bash i_pkgs/i_pkgs.sh

cp -r usr/. /usr

cp .config .themes $HOME/

mkinitcpio -P