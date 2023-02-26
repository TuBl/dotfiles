
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


echo 'Hello from .zshrc'


# Set Variables


# Change ZSH Options



# Create Aliases

alias ls='ls -lAFh'
alias fls='command ls $1 | grep $2'
alias szshrc='source ~/.zshrc'
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
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
