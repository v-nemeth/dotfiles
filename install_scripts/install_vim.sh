#!/bin/bash

if ! which "vim" ; then
  sudo apt-get install vim -y
else
  echo vim already installed
fi
