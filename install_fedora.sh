#!/usr/bin/sh

install=()

install+='sway '
install+='swaybar '
install+='i3status '
install+='wmenu ' 
install+='foot '
install+='chromium '
install+='Thunar ' # GTK file manager
install+='stow' # dotfiles manager
install+='gcc '
install+='meson '
install+='gh ' # GitHub CLI
install+='gcc '
install+='vim '
install+='rustup '

sudo dnf install ${install[*]}
stow $(dirname $0)
