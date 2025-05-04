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

sudo gdebi Downloads/Bitwarden-2025.2.1-amd64.deb
sudo gdebi Downloads/obsidian_1.8.9_amd64.deb

