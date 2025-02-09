# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#############################
#   ENVIRONMENT VARIABLES   #
#############################

export EDITOR=nvim
export VISUAL=nvim

export PKG_CONFIG_PATH=~/.pkg-config:$PKG_CONFIG_PATH
