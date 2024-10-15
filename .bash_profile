# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

. "$HOME/.cargo/env"

#############################
#   ENVIRONMENT VARIABLES   #
#############################

export EDITOR=nvim
export VISUAL=nvim

export NNN_TRASH=1 # 1=trash-cli; 2=gio trash
export NNN_OPTS="AedH"

export PKG_CONFIG_PATH=~/.pkg-config:$PKG_CONFIG_PATH
