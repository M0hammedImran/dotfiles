#Aliases
alias ll="ls -Al"

alias gss="git status"
alias gaa="git add --all"
alias gcsm="git commit -s -m"
alias gpsh="git push"

alias rmi="rm -Rf"

alias run="npm run"
alias start="npm run start"
alias dev="npm run dev"
alias build="npm run build"

#alias project="cd /mnt/m/Code/Projects/"

function mdi
    mkdir -p $argv ; cd $argv 
end
