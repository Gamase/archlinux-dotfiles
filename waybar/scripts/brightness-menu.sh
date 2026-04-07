#!/bin/bash
CURRENT=$(brightnessctl get)
MAX=$(brightnessctl max)
PERC=$((CURRENT * 100 / MAX))
eww update brightness=$PERC

if eww active-windows | grep -q "brightness-slider"; then
    eww close brightness-slider
else
    eww open brightness-slider
fi
