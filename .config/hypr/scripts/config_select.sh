#!/bin/bash
if pgrep -x "wofi" > /dev/null; then
    exit 0
fi
# Options
options="Hyprland\nWaybar\nNeovim\nWofi\nKitty\nSwayNC\nTmux"

# Show wofi menu and get selection
choice=$(echo -e $options | wofi --sort-order=alphabetical --conf ~/.config/wofi/config/prompt --style ~/.config/wofi/src/frappe/prompt.css)

# Handle selection
case "$choice" in
    "Hyprland")
        kitty -d ~/.config/hypr/ -e nvim &
        ;;
    "Waybar")
        kitty -d ~/.config/waybar/ -e nvim &
        ;;
    "Neovim")
        kitty -d ~/.config/nvim/ -e nvim &
        ;;
    "Wofi")
        kitty -d ~/.config/wofi/ -e nvim &
        ;;
    "Kitty")
        kitty -d ~/.config/kitty/ -e nvim &
        ;;
    "SwayNC")
        kitty -d ~/.config/swaync/ -e nvim &
        ;;
    "Tmux")
        kitty -d ~ -e nvim .tmux.conf &
        ;;

esac
