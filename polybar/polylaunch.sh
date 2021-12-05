if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload --config=~/.config/bspwm/statusbar/config example &
  done
else
  polybar --reload --config=~/.config/bspwm/statusbar/config example &
fi
