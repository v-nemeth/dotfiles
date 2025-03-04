#!/bin/bash

mkdir ~/dotfiles/dot_bashrc
mv ~/.bashrc ~/dotfiles/dot_bashrc/.bashrc
stow -d dotfiles dot_bashrc
