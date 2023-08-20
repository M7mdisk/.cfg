#!/bin/bash
# You can figure these out from xinput
touchpad_name="ELAN0515:01 04F3:3142 Touchpad"

touchpad_id=`xinput list --id-only "$touchpad_name"`
keyboard_name="ELAN0515:01 04F3:3142 Touchpad"

# Enable touchpad tapping
xinput set-prop $touchpad_id 363 1
# Touchpad normal scroll
xinput set-prop $touchpad_id 336 1
xinput set-prop $touchpad_id 345 0.55

setxkbmap -option 'ctrl:nocaps'
xcape -e 'Control_L=Escape'
xcape -t 10
