#!/bin/bash

if ! -d ~/dotfiles/dot_bashrc; then
  mkdir ~/dotfiles/dot_bashrc
else
  echo dot_bashrc exists
fi
mv ~/.bashrc ~/dotfiles/dot_bashrc/.bashrc
stow -d dotfiles dot_bashrc
