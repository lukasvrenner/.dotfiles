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
    make
    meson
    mpv
    pipewire
    polkitd
    rtkit
    rustup
    slurp
    stow
    sway
    swaylock
    trash-cli
    universal-ctags
    vim
    wmenu
    wireplumber
)

sudo apt install --no-install-recommends "${packages[@]}"

mkdir -p $HOME/.config
stow $(dirname $0)
