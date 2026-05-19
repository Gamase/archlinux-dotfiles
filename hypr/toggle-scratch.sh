#!/bin/bash
# Abre o cierra el scratchpad. Si está vacío, lanza una terminal primero.
windows=$(hyprctl workspaces -j | jq -r '.[] | select(.name == "special:scratch") | .windows' 2>/dev/null)

if [ -z "$windows" ] || [ "$windows" = "0" ]; then
    alacritty --class scratchpad &
    sleep 0.2
fi

hyprctl dispatch togglespecialworkspace scratch
