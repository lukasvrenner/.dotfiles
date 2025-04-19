# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#############################
#   ENVIRONMENT VARIABLES   #
#############################

export EDITOR=vi
export VISUAL=vi

export PKG_CONFIG_PATH=~/.pkg-config:$PKG_CONFIG_PATH
