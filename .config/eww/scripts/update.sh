#!/bin/bash

while true; do

	if ["$(eww get open_panel)" == "false"]; then
		sleep 2;
		continue
	fi

	BAT=$(cat /sys/class/power_supply/BAT0/capacity)%
	TIME=$(date +%H:%M)
	TYPE=$(nmcli -t -f TYPE,STATE dev | grep "connected" | head -n 1 | cut -d: -f1)

	eww update bat="$BAT"
	case "$TYPE" in
    "ethernet")
        eww update wifi="󰈀"
        ;;
    "wifi")
        SIGNAL=$(nmcli -t -f IN-USE,SIGNAL dev wifi | grep '^\*' | cut -d: -f2)
        
        if [ -z "$SIGNAL" ]; then eww update wifi="󰤮";
        elif [ "$SIGNAL" -ge 75 ]; then eww update wifi="󰤨";
        elif [ "$SIGNAL" -ge 50 ]; then eww update wifi="󰤥";
        elif [ "$SIGNAL" -ge 25 ]; then eww update wifi="󰤢";
        else eww update wifi="󰤟"; fi
        ;;
    *)
        eww update wifi="󰤮"
        ;;
	esac
	eww update time="$TIME"


	sleep 1
done
