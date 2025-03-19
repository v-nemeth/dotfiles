#!/bin/bash

rm /.bashrc
stow -d dotfiles dot_bashrc

stow -d dotfiles fonts

stow -d dotfiles wallpaper

stow -d dotfiles kitty

rm /.config/sway/config
stow -d dotfiles sway

stow -d dotfiles wofi

stow -d dotfiles waybar

stow -d dotfiles downloads

