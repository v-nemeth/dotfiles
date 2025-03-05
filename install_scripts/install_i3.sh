#!/bin/bash

#Dependencies
if ! which "playerctl" ; then
  sudo apt install playerctl -y
else
  echo playerctl already installed
fi

if ! which "brightnessctl" ; then
  sudo apt install brightnessctl -y
else
  echo brightnessctl already installed
fi

if ! which "feh" ; then
  sudo apt install feh -y
else
  echo feh already installed
fi

if ! which "arandr" ; then
  sudo apt install arandr -y
else
  echo arandr already installed
fi


if ! which "i3" ; then
  /usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734
  sudo apt install ./keyring.deb
  echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
  sudo apt update
  sudo apt install i3 -y
else
  echo i3 is already installed
fi
