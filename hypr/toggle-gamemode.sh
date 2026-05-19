#!/bin/bash

STATE_FILE="/tmp/hypr-gamemode"

if [ -f "$STATE_FILE" ]; then
    # Salir del modo juego
    rm "$STATE_FILE"
    
    # GPU vuelve a modo automático (ahorro energía)
    nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=0" 2>/dev/null
    
    notify-send -u low -t 2000 "Modo Normal" "GPU · ahorro energético"
else
    # Activar modo juego
    touch "$STATE_FILE"
    
    # GPU a máximo rendimiento (lo ÚNICO que realmente importa ahora)
    nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=1" 2>/dev/null
    
    notify-send -u normal -t 2000 "Modo Juego" "GPU · máximo rendimiento"
fi
