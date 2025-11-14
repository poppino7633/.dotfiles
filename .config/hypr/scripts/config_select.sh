#!/bin/bash
if pgrep -x "wofi" > /dev/null; then
    exit 0
fi
# Options
options="Hyprland\nWaybar\nNeovim\nWofi\nKitty\nSwayNC"

# Show wofi menu and get selection
choice=$(echo -e $options | wofi --sort-order=alphabetical --conf ~/.config/wofi/config/prompt --style ~/.config/wofi/src/frappe/prompt.css)

# Handle selection
case "$choice" in
    "Hyprland")
        kitty -d ~/.config/hypr/ -e nvim hyprland.conf &
        ;;
    "Waybar")
        kitty -d ~/.config/waybar/ -e nvim config.jsonc &
        ;;
    "Neovim")
        kitty -d ~/.config/nvim/ -e nvim init.lua &
        ;;
    "Wofi")
        kitty -d ~/.config/wofi/ -e nvim config/config &
        ;;
    "Kitty")
        kitty -d ~/.config/kitty/ -e nvim kitty.conf &
        ;;
    "SwayNC")
        kitty -d ~/.config/swaync/ -e nvim config.json &
        ;;

esac
