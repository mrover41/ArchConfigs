#!/bin/bash
STATE=$(eww get open_panel)

if [ "$STATE" == "true" ]; then
    eww update open_panel=false
else
    eww update open_panel=true
fi
