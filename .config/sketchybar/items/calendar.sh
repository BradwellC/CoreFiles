#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                          update_freq=20 \
                          background.color=$ITEM_BG_COLOR \
                          script="$PLUGIN_DIR/calendar.sh"
