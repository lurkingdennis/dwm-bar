#!/bin/sh

dwm_alsa () {
	STATUS=$(pamixer --get-mute)
	VOL=$(pamixer --get-volume)
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
    	if [ "$STATUS" = "true" ]; then
	            printf "󰝟 muted"
    	else
    		#removed this line becuase it may get confusing
	        if [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
	            printf "  %s%%" "$VOL"
	        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
	            printf "  %s%%" "$VOL"
	        else
	            printf "  %s%%" "$VOL"
	        fi
		fi
    else
    	if [ "$STATUS" = "muted" ]; then
    		printf "muted"
    	else
	        # removed this line because it may get confusing
	        if [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
	            printf "VOL %s%%" "$VOL"
	        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
	            printf "VOL %s%%" "$VOL"
	        else
	            printf "VOL %s%%" "$VOL"
        	fi
        fi
    fi
    printf "%s \n" "$SEP2"
}

dwm_alsa
