#!/bin/bash

# List of animations
animations=("fade" "slide" "zoom" "flip")

# Select a random animation
animation=${animations[$RANDOM % ${#animations[@]}]}

# Apply the animation (replace this with actual command)
case $animation in
    "fade")
        hyprctl dispatch animation fade
        ;;
    "slide")
        hyprctl dispatch animation slide
        ;;
    "zoom")
        hyprctl dispatch animation zoom
        ;;
    "flip")
        hyprctl dispatch animation flip
        ;;
esac

