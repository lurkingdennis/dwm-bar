#!/bin/sh

# Dependencies: light

PREFIX="󱍖"
BAT_PERC=$(expr $(cat /sys/class/backlight/amdgpu_bl1/actual_brightness) \* 100 / $(cat /sys/class/backlight/amdgpu_bl1/max_brightness))

dwm_backlight()
{
    echo ""$SEP1"$PREFIX  $BAT_PERC%$SEP2"
}

dwm_backlight
