#!/bin/bash

echo "yes" > /home/farel/Documents/scripts/logout/logstatus
loginctl kill-session $XDG_SESSION_ID
