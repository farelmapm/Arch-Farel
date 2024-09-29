#!/bin/bash

content=$(cat /home/farel/Documents/scripts/logout/logstatus)

if [ "$content" == "yes" ]; then
    echo "no" > logstatus
elif [ "$content" == "no" ]; then
    hyprlock
fi
