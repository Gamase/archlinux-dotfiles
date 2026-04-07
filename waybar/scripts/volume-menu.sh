#!/bin/bash
STATE_FILE="/tmp/waybar-volume-expanded"

if [ -f "$STATE_FILE" ]; then
    rm "$STATE_FILE"
else
    touch "$STATE_FILE"
    # Auto cerrar despues de 3 segundos sin interaccion
    (sleep 3 && rm -f "$STATE_FILE" && pkill -RTMIN+1 waybar) &
fi

pkill -RTMIN+1 waybar
