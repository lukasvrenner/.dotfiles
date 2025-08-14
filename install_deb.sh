#!/usr/bin/sh

install=()

install+='sway '
install+='swaybar '
install+='i3status '
install+='wmenu ' 
install+='foot '
install+='chromium '
install+='thunar ' # GTK file manager
install+='stow' # dotfiles manager
install+='gcc '
install+='ctags '
install+='meson '
install+='gh ' # GitHub CLI
install+='vim '
install+='rustup '
install+='imv '
install+='locate '
install+='desktop-file-utils ' # creates a cache to make xdg-open fast
install+='network-manager '
install+='pipewire '
install+='brightnessctl '

sudo apt install  ${install[*]}

# don't install recommends to avoid installing yt-dlp and other deps
sudo apt install --no-install-recommends mpv
stow $(dirname $0)
