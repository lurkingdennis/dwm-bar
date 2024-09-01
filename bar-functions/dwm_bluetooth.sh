#!/bin/bash

# Prints out the bluetooth status

BLUETOOTH_ON_ICON='󰂯 on'
BLUETOOTH_OFF_ICON='󰂲 off'

dwm_bluetooth()
{
    status=$(bluetooth | awk '{print $3}')

    if [ "$status" == "on" ]
    then
        echo ""$SEP1" $BLUETOOTH_ON_ICON$SEP2"
    else
        :
        echo ""$SEP1" $BLUETOOTH_OFF_ICON"$SEP2""
    fi
}

dwm_bluetooth
