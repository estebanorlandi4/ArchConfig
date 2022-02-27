#!/bin/bash/

ROOT_PATH="$HOME/.config/polybar/autoconfig"
CONFIG="$HOME/.config/polybar/config"

separator="\n;=====================\n\n"

rm -f $CONFIG

# Add colors
cat $ROOT_PATH/colors >> $CONFIG
  
# separator
printf $separator >> $CONFIG

# Add bar
cat $ROOT_PATH/bar >> $CONFIG


# Add modules
for file in $ROOT_PATH/modules/*.module;
do
  printf "\n;=====================\n;\n; $(basename $file|cut -f1 -d'.')\n;\n;=====================\n\n" >> $CONFIG
  cat $file >> $CONFIG
  printf "\n" >> $CONFIG
done

printf $separator >> $CONFIG

# Add settings
cat $ROOT_PATH/settings >> $CONFIG

printf $separator >> $CONFIG

# Add global
cat $ROOT_PATH/global >> $CONFIG
