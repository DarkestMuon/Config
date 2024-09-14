#!/bin/bash

# Path to your window ID file
WINDOW_ID_FILE="/tmp/current_window_id"

while true; do
    # Get the current window ID
    current_window_id=$(hyprctl monitors | grep -oP 'window_id:\s*\K\d+')

    # Check if the window ID has changed
    if [ "$current_window_id" != "$(cat $WINDOW_ID_FILE 2>/dev/null)" ]; then
        echo "$current_window_id" > $WINDOW_ID_FILE

        # Apply random animation
        ~/.config/hypr/scripts/random_animation.sh
    fi

    # Wait for a short period before checking again
    sleep 1
done

