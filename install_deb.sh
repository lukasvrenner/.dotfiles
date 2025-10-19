#!/usr/bin/bash

packages=(
    brightnessctl
    chromium
    desktop-file-utils # creates a cache to make xdg-open fast
    fonts-noto-color-emoji
    foot
    gcc
    gh
    grim
    i3status
    imv
    locate
    meson
    mpv
    pipewire
    rustup
    slurp
    stow
    sway
    universal-ctags
    vim
    wmenu
)

sudo apt install --no-install-recommends "${packages[@]}"

mkdir -p $HOME/.config
stow $(dirname $0)
