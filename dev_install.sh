#!/bin/bash
#OBS INSTALL BREW MANUALLY FIRST

brew install asdf

sudo apt install libyaml-dev
asdf plugin add ruby
asdf install ruby latest
asdf set ruby `asdf list ruby`

sudo apt update
sudo apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev

gem install rails

sudo apt install gdebi -y
