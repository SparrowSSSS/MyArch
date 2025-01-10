#!/usr/bin/env bash
config_path="$HOME/.config/hypr/hyprland.conf"

if [ "$#" -lt 2 ]; then
  echo "Empty argument"
  exit 1
fi 

var=$1
new_value=$2

line=$(sed -n "/\$$var = / =" $config_path)

if [ -z "$line" ]; then
  echo "Variable $var not found in hyprland.conf"
  exit 1
fi 

result=$(sed "${line}c\\\$$var = $new_value" $config_path)

if [ -z "$result" ]; then
  echo "Failed to set $var to $new_value"
  exit 1
fi 

echo "$result" > $config_path
