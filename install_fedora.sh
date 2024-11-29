#!/usr/bin/sh

install=()

# graphical
install+='sway '
install+='swaybar ' # status bar for sway
install+='i3status '
install+='wmenu ' 
install+='foot '
install+='chromium '
install+='Thunar ' # GTK file manager
install+='stow' # dotfiles manager
install+='gcc '
install+='meson '
install+='nnn ' # terminal file manager
install+='gh ' # github CLI
install+='ripgrep '


# rust compiler
echo "installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo component add rust-analyzer # LSP

# C compiler
install+='gcc '
install+='clang-tools-extra ' # provides clangd and clang-format

install+='neovim'
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

nvim +PaqInstall +q # install plugins and quit


sudo dnf install ${install[*]}
stow $(dirname $0)
