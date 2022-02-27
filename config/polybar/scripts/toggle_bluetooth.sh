CONNECTED=$(bluetoothctl show | grep -e "Powered:" | cut -f2 -d' ')

if [[ $CONNECTED == "yes" ]]
then
  bluetoothctl power off
else
  bluetoothctl power on
fi
