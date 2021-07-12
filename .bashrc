# Instagram: https://instagram.com/m0hammedimran
# My bash config (Git bash). Not much to see here.  Some pretty standard stuff.

# Generic Aliases
alias rmi="rm -Rf"
alias ls="ls -l --group-directories-first --color=auto"
alias la="ls -AlF --group-directories-first --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."

# Git Aliases
alias gss="git status"
alias gaa="git add -A"
alias gcsm="git commit -m"
alias gp="git push"

# Firebase Aliases
alias fd="firebase deploy"
source "$HOME/.cargo/env"

BLUE="\[\033[0;34m\]"
DARK_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
DARK_RED="\[\033[1;31m\]"
NO_COLOR="\[\033[0m\]"

export PS1="$BLUE\u@\h $RED\W \n$DARK_BLUE[\$(date +%k:%M:%S)] $DARK_RED$ $NO_COLOR"
