#!/bin/sh

dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$STATUS" = "Charging" ]; then
            printf "󱊦 %s%%" "$CHARGE"
        else
            if [ "$CHARGE" -gt 0 ] && [ "$CHARGE" -le 33 ]; then
                printf "󱊡 %s%%" "$CHARGE" 
            elif [ "$CHARGE" -gt 33 ] && [ "$CHARGE" -le 66 ]; then
                printf "󱊢 %s%%" "$CHARGE"
            else
                printf "󱊣 %s%%" "$CHARGE"
            fi
        fi
    else
        printf "BAT %s%% %s" "$CHARGE" #"$STATUS"
    fi

    printf "%s\n" "$SEP2"
}

dwm_battery

