#!/bin/sh

icons=""
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo $icons
else
  icons="%{F#fbf2ff}$icons%{F-}"
  # Power on - No devices
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo $icons
  fi
  
  devices=$(bluetoothctl devices \
  | cut -f2 -d' ' \
  | while read uuid; do bluetoothctl info $uuid; done \
  | grep -e "Icon\|Connected: yes" \
  | grep -B1 "yes" \
  | grep -v 'yes' \
  | cut -d\  -f2- \
  | sed 's/ //')

  while IFS= read type
  do
    if [[ $type == 'input-keyboard' ]];then 
      icons="$icons "
    elif [[ $type == 'audio-headset' ]]; then
      icons="$icons "
    else
      icons="$icons "
    fi
  done <<< $devices
  
  echo $icons
fi

