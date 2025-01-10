#!/usr/bin/env bash

check=$(nmcli connection | grep "tun")

if [ -z "$check" ]; then
  echo "Disconnected"
else
  echo "Connected"
fi
