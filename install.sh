#!/usr/bin/env bash

export DIR=/skel

cp -r aurrepo /usr/local/share

cp -r etc/. /etc

bash i_pkgs/i_pkgs.sh

cp -r system/. /etc/systemd/system

cp -r usr/. /usr

mkinitcpio -P
