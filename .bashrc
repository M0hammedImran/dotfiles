# Instagram: https://instagram.com/m0hd_imran
# My bash config (Git bash). Not much to see here.  Some pretty standard stuff.

function color_my_prompt {
local __cur_location="\[\033[01;34m\]✨🐉\w"
local __git_branch_color="\[\033[31m\]"
local __git_branch="\`ruby -e \"print ('%x{git branch 2> /dev/null}.grep(/^\*/).first' || '').gsub(/^\* (.+)$/, (\1))\"\`"
local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(git:\\\\\1\)'\_\🐉✨\\'\ /`'
# local __git_branch='git'
local __prompt_tail="\[\033[35m\]\n💙👉🏼"
local __last_color="\[\033[00m\]"
export PS1="\n$__cur_location $__git_branch_color $__git_branch  $__prompt_tail $__last_color"
}

color_my_prompt
export TERM="xterm-color"

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
alias co="code ."
alias home="cd /m/Code/"

# NPM Specific Aliases 
alias run="npm run"
alias start="npm run start"
alias build="npm run build"
alias nserve="npm run serve"

# Firebase Aliases
alias fd="firebase deploy"

alias create-react-app="npx create-react-app "

fideho() { 
  firebase deploy --only hosting:"$1"
}

mkcd(){
  mkdir "$1" && cd "$1"
}
