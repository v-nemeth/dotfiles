#!/bin/bash

if ! which "stow" ; then
  sudo apt install build-essential -y
  sudo apt install stow -y
else
  echo Stow already installed
fi
