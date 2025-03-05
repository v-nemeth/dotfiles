#!/bin/bash

if ! which "kitty" ; then
  curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n
	  sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/
  gsettings set org.gnome.desktop.default-applications.terminal exec 'kitty'
else
  echo Chrome already installed
fi
