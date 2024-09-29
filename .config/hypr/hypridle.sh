#!/bin/bash

# Define the file paths
current_file="/home/farel/.config/hypr/hypridle.conf"
awake="/home/farel/.config/hypr/hypridle-awake.conf"
sleep="/home/farel/.config/hypr/hypridle-sleep.conf"
status=$(head -c 4 "$current_file")

if [[ "$1" == "status" ]]; then
  if [ "$status" == "#yes" ]; then
    echo '{"text": "RUNNING", "class": "active", "tooltip": "System is staying awake\nLeft Click: Activate\nRight Click: Lock Screen"}'
  else
    echo '{"text": "NOT RUNNING", "class": "notactive", "tooltip": "System will sleep on idle\nLeft Click: Activate\nRight Click: Lock Screen"}'
  fi
elif [[ "$1" == "toggle" ]]; then
  
  if [ "$status" == "#yes" ]; then
    echo '{"text": "NOT RUNNING", "class": "notactive", "tooltip": "System will sleep on idle\nLeft Click: Activate\nRight Click: Lock Screen"}'
    cp "$sleep" "$current_file"
  else
    echo '{"text": "RUNNING", "class": "active", "tooltip": "System is staying awake\nLeft Click: Activate\nRight Click: Lock Screen"}'
    cp "$awake" "$current_file"
  fi
  hyprctl reload
fi
   


