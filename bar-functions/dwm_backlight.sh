#!/bin/sh

# Dependencies: light

PREFIX="󱍖"

dwm_backlight()
{
    echo ""$SEP1"$PREFIX  $(light | sed 's/\..*//g')%$SEP2"
}

dwm_backlight
