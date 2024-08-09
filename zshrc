
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

echo 'Hello from .zshrc'


# Set Variables

# Syntax Highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options



# Create Aliases

alias ls='ls -lAFh'
alias fls='command ls $1 | grep $2'
alias szshrc='source ~/.zshrc'

alias c="cd $HOME/coding/;clear"

#[ dev ]
# js - pnpm
alias nprod="pnpm run prod"
alias nstart="pnpm run start"
alias ndev="pnpm run dev"
alias nrwa="pnpm run watch"

# php - laravel/sail

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

#[ git ]
alias gconf="nano $HOME/.gitconfig"
alias amend="g commit --amend"
alias gl1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gl2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glp="gl -p"
alias ga="git add"
alias gcls="clear;gsb"
alias gsbc="clear;gsb"
alias gcsl="clear;gsb"
alias g="git"
alias giff="git diff"
alias gaa="git add ."
alias gc="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"

# Create a commit with wip comment
alias wip="git add .;git commit -m 'WIP'"
# undo the last commit
alias unwip="git reset HEAD~1"

#status
alias gs="git status"
alias gsb="git status -sb"
alias gb="git branch"
# push
alias gp="git push"
alias gpu="git push -u origin"
# sync
alias gf="git fetch"
alias gpd="git pull"
#stash
alias gslist="git stash list"

# Customize Promt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable


# Write Handy functions

function mkcd () {
  mkdir -p "$@" && cd "$_";
}


function csc() {
    cd ~/Desktop
    rm -f Screenshot*
}


function sdocs() {

    cd ~/Desktop

    # Check if an argument is provided
    if [ $# -eq 0 ]; then
        echo "No file extension provided. Usage: sdocs [file_extension]"
        return 1
    fi

    local extension=$1
    local target_directory="${extension}-store"


    # Check if the target directory exists, create it if it doesn't
    if [ ! -d "$target_directory" ]; then
        mkdir "$target_directory"
    fi

    # Move all files of the given extension to the target directory
    mv *."$extension" "$target_directory"/ 2>/dev/null

    # Check if any files were moved, if not, inform the user
    if [ $? -ne 0 ]; then
        echo "No files with .$extension extension found to move."
    else
        echo "All .$extension files have been moved to $target_directory."
    fi
}

# Use ZSH Plugins



# ... and Other Surprises

# pnpm
export PNPM_HOME="/Users/tariqyousef/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end




PATH=~/.console-ninja/.bin:$PATH