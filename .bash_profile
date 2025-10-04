# .bash_profile

# Get the aliases and functions
if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#############################
#   ENVIRONMENT VARIABLES   #
#############################

export EDITOR=vi
export VISUAL=vi

export GTK_THEME=Adwaita:dark

export VERSION_CONTROL=none # don't let GNU Indent create backup files
