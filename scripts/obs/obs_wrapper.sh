#!/bin/bash
trap _cleanup EXIT INT HUP TERM
_cleanup()
{
    sed -i "/# OBS passthru/,+4d" "/home/farel/.config/hypr/UserConfigs/UserKeybinds.conf"
}
echo "# OBS passthru" >> "/home/farel/.config/hypr/UserConfigs/UserKeybinds.conf"
echo "bind = , HOME, pass, ^(com\.obsproject\.Studio)$" >> "/home/farel/.config/hypr/UserConfigs/UserKeybinds.conf"
echo "bind = , page_up, pass, ^(com\.obsproject\.Studio)$" >> "/home/farel/.config/hypr/UserConfigs/UserKeybinds.conf"
echo "bind = , page_down, pass, ^(com\.obsproject\.Studio)$" >> "/home/farel/.config/hypr/UserConfigs/UserKeybinds.conf"
echo "bind = , END, pass, ^(com\.obsproject\.Studio)$" >> "/home/farel/.config/hypr/UserConfigs/UserKeybinds.conf"
obs
