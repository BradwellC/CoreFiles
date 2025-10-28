#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                        background.color=$PINK \
           --subscribe volume volume_change \
