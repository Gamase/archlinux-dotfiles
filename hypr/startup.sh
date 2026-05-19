#!/bin/bash

# Fondo de pantalla
swaybg -i ~/.config/hypr/wallpapers/fondo.jpg &

# Barra
waybar &

# Portapapeles — historial persistente
wl-paste --watch cliphist store &

# Auto-lock e idle
swayidle -w \
    timeout 300  'hyprlock' \
    timeout 600  'hyprctl dispatch dpms off' \
    resume       'hyprctl dispatch dpms on' \
    before-sleep 'hyprlock' &

# Workspace 1 — Terminal principal
sleep 1
alacritty --title homebase -e zsh &
kitty --title matrix -e cmatrix -C red &
kitty --title clock -e tty-clock -c -C 1 -s &

# Workspace 2 — Música (windowrule asigna workspace automáticamente)
(sleep 2 && spotify) &
(sleep 2 && alacritty --title cava-music -e cava) &
(sleep 2 && kitty --title aquarium -e asciiquarium) &

# Workspace 3 — Editor
(sleep 3 && kitty --title nvim-ws -e nvim) &
(sleep 3 && kitty --title pipes-ws -e pipes.sh) &
(sleep 3 && kitty --title bonsai-ws -e cbonsai -l) &

# Workspace 4 — Monitor
(sleep 4 && kitty --title btop-ws -e btop -l) &

# Workspace 5 — Navegador
(sleep 4 && firefox) &

# Workspace 6 — Discord
(sleep 5 && discord) &

# Workspace 7 — Steam
(sleep 6 && steam) &
