#!/bin/bash
# Install sway
sudo apt install sway sway-backgrounds swaybg swayidle swaylock xdg-desktop-portal-wlr xwayland -y

# Install sddm
sudo apt install --no-install-recommends -y sddm
sudo systemctl enable sddm

# Install vim
sudo apt install vim -y

# Install kitty + additional dependency
sudo apt install libwayland-egl1-mesa -y
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten /usr/bin/

# Install curl
sudo apt install curl -y

# Install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub > linux_signing_key.pub
sudo install -D -o root -g root -m 644 linux_signing_key.pub /etc/apt/keyrings/linux_signing_key.pub
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/linux_signing_key.pub] http://dl.google.com/linux/chrome/deb stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable -y

# Install stow
sudo apt install stow -y

# Install wofi
sudo apt install libwayland-dev libgtk-3-dev pkgconf meson mercurial -y

hg clone https://hg.sr.ht/~scoopta/wofi
cd wofi
meson setup build
ninja -C build
sudo ninja -C build install
cd ~

# Install waybar
sudo apt install waybar -y

# Install pulse-audio for audio controls
sudo apt install pulseaudio -y

# Install nautilus for file management
sudo apt install nautilus -y
