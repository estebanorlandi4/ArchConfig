#!/usr/bin/env bash

# Create config file
source $HOME/.config/polybar/autoconfig/start.sh

# Terminate already running bar instances
killall -q polybar

# Show polybar in every monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload myBar &
  done
else
  polybar --reload myBar &
fi
