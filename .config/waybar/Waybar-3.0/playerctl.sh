#!/usr/bin/env bash
pause_icon="<span foreground='#46c880'></span>"
play_icon="<span foreground='#85b6dc'></span>"
music_icon="<span foreground='#46c880'> </span>"

status=$(playerctl status)
player=$(playerctl metadata --format '{{ playerName }}')
tooltip=$(playerctl metadata --format '{{ artist }} - {{ title }}')

if [ "$status" == "" -o "$player" == "" ]; then
  echo "{\"text\":\"$music_icon\"}"
  exit 0 
fi 

if [ "$status" == 'Paused' ]; then 
  icon="$pause_icon"
else
  icon="$play_icon"
fi

if [ $(expr "$tooltip" : "&") > 0 ]; then
  title=${tooltip//"&"/"&amp;"}
fi

echo "{\"text\":\"$icon <span>$player</span>\",\"tooltip\":\"$tooltip\"}"
