# Instagram: https://instagram.com/m0hd_imran
# My bash config (Git bash). Not much to see here.  Some pretty standard stuff.

# Generic Aliases
alias rmi="rm -Rf"
alias ls="ls -l"
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

# NPM Specific Aliases 
alias run="npm run"
alias start="npm run start"
alias build="npm run build"
alias nserve="npm run serve"

# Firebase Aliases
alias fd="firebase deploy"

alias create-react-app="npx create-react-app "

source "$HOME/.cargo/env"
eval "$(starship init bash)"

