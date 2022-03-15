#!/bin/sh

PRC=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "percent" | xargs)
TTE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "time to" | xargs)
STATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "state" | xargs)

if [ -z "$TTE" ]; then
  TTE="time to full: 0s"
fi

FINAL="$PRC  ::  $TTE  ::  $STATE"
NB_PRC=${PRC#"percentage: "}
NB_PRC=${NB_PRC%"%"}

echo -e "$PRC\n$TTE\n$STATE" | dmenu
exit 0
