#Aliases
alias ll="ls -Al"

alias gss="git status"
alias gaa="git add --all"
alias gcsm="git commit -s -m"
alias gpsh="git push"

alias rmi="rm -Rf"

alias start="yarn start"
alias dev="yarn dev"
alias build="yarn build"

alias gss="git status"
alias gaa="git add ."
alias gp="git push"
alias gcsm="git commit -m"

alias lightsail="ssh -i /home/imran/.ssh/Sourcetronics_Dev.pem ubuntu@35.154.170.51"
alias liveserver="ssh -i ~/.ssh/Sourcetronics_Dev.pem  ubuntu@52.66.180.208"
alias vconf="vim ~/.vimrc"
alias fconf="vim ~/.config/fish/config.fish"
alias zconf="vim ~/.zshrc"
alias aconf="vim ~/.alacritty.yml"

function st 
    cd ~/code/sourcetronics/ ; 
    tmux new-session -d -s dev ;
    tmux send-keys 'cd client/' 'C-m' ;
    tmux send-keys 'clear' 'C-m' ;
    tmux split-window -h ;
    tmux send-keys 'cd server' 'C-m' ;
    tmux send-keys 'clear' 'C-m' ;
    tmux attach-session -t dev ;
end

function mdi --wraps mkdir --description 'alias mdi=mkdir -p $argv ; cd $argv' 
    mkdir -p $argv ; cd $argv
end

function tnew --wraps tmux --description 'alias tnew=tmux new -s'
   if test -z "$argv"
      tmux new -s dev
   else
      tmux new -s $argv
   end
end

function rmi --wraps rm --description 'alias rmi=rm -rf'
    rm -rf $argv
end

starship init fish | source
export DENO_INSTALL="/home/imran/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
