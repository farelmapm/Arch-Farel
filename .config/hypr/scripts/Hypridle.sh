#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# This is for custom version of waybar idle_inhibitor which activates / deactivates hypridle instead

PROCESS="hypridle"

if [[ "$1" == "status" ]]; then
    sleep 1
    if pgrep -x "$PROCESS" >/dev/null; then
        echo '{"text": "RUNNING", "class": "active", "tooltip": "Computer will sleep while idle\nLeft Click: Activate\nRight Click: Lock Screen"}'
    else
        echo '{"text": "NOT RUNNING", "class": "notactive", "tooltip": "Computer will stay awake\nLeft Click: Deactivate\nRight Click: Lock Screen"}'
    fi
elif [[ "$1" == "toggle" ]]; then
    if pgrep -x "$PROCESS" >/dev/null; then
        pkill "$PROCESS"
    else
        "$PROCESS"
    fi
else
    echo "Usage: $0 {status|toggle}"
    exit 1
fi
