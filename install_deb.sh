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
install+='mpv '
install+='locate '
install+='desktop-file-utils ' # usefull xdg mimeapp stuff
install+='network-manager '
install+='pipewire '


sudo apt install --no-install-recommends ${install[*]}
stow $(dirname $0)
