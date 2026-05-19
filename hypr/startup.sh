#!/bin/bash
swaybg -i "$HOME/Downloads/fondo.jpg" &
waybar &
sleep 2  # espera a que Hyprland esté completamente inicializado
alacritty --title homebase -e zsh &
sleep 0.5
kitty --title matrix -e cmatrix -C red &
sleep 0.5
kitty --title clock -e tty-clock -c -C 1 &

# Workspace 2 - Música
(sleep 2 && hyprctl dispatch workspace 2 && spotify) &
(sleep 3 && alacritty --title cava-music -e cava) &
(sleep 3 && kitty --title aquarium -e asciiquarium) &

# Workspace 3 - Editor
(sleep 4 && kitty --title nvim-ws -e nvim) &
(sleep 4 && kitty --title pipes-ws -e pipes.sh) &
(sleep 4 && kitty --title bonsai-ws -e cbonsai -l) &

# Workspace 4 - Btop
(sleep 5 && kitty --title btop-ws -e btop -l) &

# Workspace 5 - Navegador
(sleep 6 && hyprctl dispatch workspace 5 && firefox) & 

# Workspace 6 - Navegador
(sleep 7 && hyprctl dispatch workspace 6 && discord) &

# Workspace 7 - Steam
(sleep 8 && hyprctl dispatch workspace 7 && steam) &
