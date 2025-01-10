#!/usr/bin/env bash

status=$(/home/sparrow/scripts/check_vpn.sh)

if [[ $status == "Connected" ]]; then
  icon="󰌆"
else 
  icon="󰌊"
fi

echo "{\"text\":\"<span color='#ed8796' >$icon</span>\", \"tooltip\":\"VPN $status\"}"
