#Aliases
alias ls="ls -Al"

alias gaa="git add --all"
alias gcsm="git commit -s -m"
alias gpsh="git push"
alias gs="git status"
alias rm="rm -Rf"

alias project="cd /mnt/m/Code/Projects/"

function md
    mkdir -p $argv ; cd $argv 
end
  
