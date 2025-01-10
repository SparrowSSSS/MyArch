#!/usr/bin/env bash

running=$(hyprctl -j clients | jq -r ".[] | select(.class == \"${1}\") | .workspace.name")

if [[ $running != "" ]]; then
    hyprctl dispatch workspace $running
else
    # always open on w/space 3    
    $2
fi 
