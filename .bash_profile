# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Larger bash history
export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE

#ignore duplicates and commands that start with a space.
#NOTE TO SELF, remember to use the space start more often
export HISTCONTROL=ignoreboth
# Make some commands not show up in history
export HISTIGNORE="exit:date:clear"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US"

function print_before_the_prompt () {
NOW=`date '+%d/%m %T'`
printf "\033[3;37m%s\033[0m%s " "$NOW"
}

PROMPT_COMMAND=print_before_the_prompt

PS1='[STYLOPHONE] \w $ '
export PATH=$HOME/bin:$PATH

# Dircolors 
alias ls='ls --color=auto'
export LS_COLORS='di=01;36:ex=01;32:ln=01;31'

