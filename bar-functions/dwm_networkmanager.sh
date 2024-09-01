#!/bin/sh

# Dependencies: NetworkManager

dwm_networkmanager () {
    CONNAME=$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')
    if [ "$CONNAME" = "" ]; then
        CONNAME=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)
    fi

    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ $(wifi | awk {'print $3'}) = "on" ]; then
            if [ "$CONNAME" = "" ]; then
                echo "${SEP1}󰖪 no connection${SEP2}"
            else
                echo "${SEP1}󰖩  ${CONNAME}${SEP2}"
            fi
        else
            echo "${SEP1}󰖪 off${SEP2}"
        fi
    else
        echo "${SEP1}NET ${CONNAME}${SEP2}"
    fi
}

dwm_networkmanager
