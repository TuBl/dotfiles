source /opt/homebrew/opt/nvm/nvm.sh

echo 'Hello from .zshrc'


# Set Variables
# Syntax highlighting for man pages using bat 
export MANPAGER=" sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options



# Create Aliases

alias ls='ls -lAFh'
alias fls='command ls $1 | grep $2'
# git aliases

alias gca='git commit -am $1'

# Customize Promt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable


# Write Handy functions

function mkcd () {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins



# ... and Other Surprises
