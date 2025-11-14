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
        kitty -d ~/.dotfiles/.config/hypr/ -e nvim &
        ;;
    "Waybar")
        kitty -d ~/.dotfiles/.config/waybar/ -e nvim &
        ;;
    "Neovim")
        kitty -d ~/.dotfiles/.config/nvim/ -e nvim &
        ;;
    "Wofi")
        kitty -d ~/.dotfiles/.config/wofi/ -e nvim &
        ;;
    "Kitty")
        kitty -d ~/.dotfiles/.config/kitty/ -e nvim &
        ;;
    "SwayNC")
        kitty -d ~/.dotfiles/.config/swaync/ -e nvim &
        ;;

esac
