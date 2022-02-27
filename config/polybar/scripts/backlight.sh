echo " $(brightnessctl i | grep 'Current' | cut -f4 -d' ' | tr -d '\(\)')"
