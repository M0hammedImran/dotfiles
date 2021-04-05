export ZSH="/home/imran/.oh-my-zsh"

ZSH_THEME="jnrowe"

export UPDATE_ZSH_DAYS=5

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(
        git
        sudo 
        colored-man-pages
        zsh-autosuggestions 
        history-substring-search 
        zsh-syntax-highlighting
      )

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code -w'
fi

# Functions
mki() {
  mkdir $1 && cd $1/
}

tnew() {
   [[ -z "$1" ]] && tmux new -s 'dev' 
   tmux new -s $1
}

alias ll="exa -la --git --group-directories-first"
alias la="exa -la --git --group-directories-first"
alias ls="exa -la --git --group-directories-first"
alias rmi="rm -Rf"

#npm specific commands
alias start="yarn start"
alias dev="yarn dev"
alias build="yarn build"

alias gp="git push"
alias gcsm="git commit -m"
alias gaa="git add ."
alias gss="git status"

# ssh Specific
alias lightsail="ssh -i /home/imran/.ssh/Sourcetronics_Dev.pem ubuntu@35.154.170.51"
alias liveserver="ssh -i ~/.ssh/Sourcetronics_Dev.pem  ubuntu@52.66.180.208"

alias update='sudo apt update && sudo apt upgrade'
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi

###-end-npm-completion-###

export PATH="$PATH:/opt/yarn-[version]/bin"
eval "$(starship init zsh)"

