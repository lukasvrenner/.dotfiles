#!/usr/bin/bash

packages=(
    sway
    i3status
    wmenu
    foot
    chromium
    stow
    gcc
    universal-ctags
    meson
    gh
    vim
    rustup
    imv
    locate
    desktop-file-utils # creates a cache to make xdg-open fast
    pipewire
    brightnessctl
    slurp
    grim
    fonts-noto-color-emoji
)

sudo apt install "${packages[@]}"

# don't install recommends to avoid installing yt-dlp and other deps
sudo apt install --no-install-recommends mpv

mkdir $HOME/.config
stow $(dirname $0)
